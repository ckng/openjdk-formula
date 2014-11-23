{%- from "openjdk/map.jinja" import openjdk with context %}

jdk-config:
  file.managed:
    - name: /etc/profile.d/openjdk.sh
    - source: salt://openjdk/files/openjdk.sh
    - template: jinja
    - mode: 644
    - user: root
    - group: root
    - context:
      java_home: {{ openjdk.java_home }}
