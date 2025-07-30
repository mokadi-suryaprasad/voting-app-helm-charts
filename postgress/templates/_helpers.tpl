{{/*
Generate the full name of the resource
*/}}
{{- define "db.fullname" -}}
{{- printf "%s-%s" .Release.Name "db" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Generate the name of the app
*/}}
{{- define "db.name" -}}
db
{{- end }}
