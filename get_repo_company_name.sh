#!/usr/bin/env sh

repo_full_name=$1
# SrgAppCisampleAndroid --> srg-app-cisample-android
mapStringFromUpperCaseFormatToDashLowerCaseFormat() {
  stringBuilder=""
  pluginName="$1"
  DELIMITER_DASH="-"
  # for loop all the characters in a string
  for ((i = 0; i <= ${#pluginName}; i++)); do
    character="${pluginName:$i:1}"
    # check if the character is uppercase
    if [[ "$character" =~ [A-Z] ]]; then
      #convert a character/string from upper case to lower case
      character_in_lowercase=$(echo -e "${character}" | tr '[:upper:]' '[:lower:]')
      # check if stringBuilder is not empty
      if [ -n "${stringBuilder}" ]; then
        stringBuilder="${stringBuilder}${DELIMITER_DASH}${character_in_lowercase}"
      else
        stringBuilder="${character_in_lowercase}"
      fi
    else
      stringBuilder="${stringBuilder}$character"
    fi
  done
  echo "${stringBuilder}"
}

#srg-app-cisample-android --> srg
getRepoCompanyName() {
  dashFormatString="$1"
  DELIMITER_DASH="-"
  a_company_name=$(echo "${dashFormatString}" | cut -d "${DELIMITER_DASH}" -f1)
  echo "${a_company_name}"
}

# SrgAppCisampleAndroid --> srg
getRepoCompanyNameFromRepoName() {
  dash_repo_name=$(mapStringFromUpperCaseFormatToDashLowerCaseFormat "$1")
  a_company_name=$(getRepoCompanyName "${dash_repo_name}")
  echo "${a_company_name}"
}

if [[ -z "${repo_full_name}" ]]; then
  exit 1
else
  repo_company_name_lower_case=$(getRepoCompanyNameFromRepoName "${repo_full_name}")
  echo "${repo_company_name_lower_case}"
fi
