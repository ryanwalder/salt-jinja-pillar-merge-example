{% from 'valexample/map.jinja' import example with context %}

example:
  user.present:
    - name: {{ example.user }}
    - home: {{ example.home }}
    {% if example.uid %}
    - uid: {{ example.uid }}
    {% endif %}
    {% if example.gid %}
    - gid: {{ example.gid }}
    - gid_from_name: True
    {% endif %}
    - shell: /bin/false
  pkg.installed:
    - pkgs: {{ example.pkgs|json }}

{% for file in example.files %}
file-{{ file }}:
  file.managed:
    - name: {{ file }}
{% endfor %}
