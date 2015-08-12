# flaskapp-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['flaskapp']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### flaskapp::default

Include `flaskapp` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[flaskapp::default]"
  ]
}
```

## License and Authors

Author:: Bonobos, Inc. (<ehoffman@bonobos.com>)
