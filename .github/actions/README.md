# Toggle Monitor GitHub Action

This action toggles an UptimeRobot monitor on or off.

## Inputs

### `apiKey`

**Required** The UptimeRobot API Key. Use `{{ secrets.UPTIME_ROBOT_API_KEY }}` to keep your key secret.

### `monitorID`

**Required** The ID of the monitor to be toggled. Use `{{ secrets.MONITOR_ID }}` to keep the monitor ID secret.

### `action`

**Required** The action to perform. Allowed values are `pause` or `resume`.

## Example usage

```yaml
uses: kennylajara/devops-actions/.github/actions/toggle-monitor@main
with:
  apiKey: ${{ secrets.UPTIME_ROBOT_API_KEY }}
  monitorID: ${{ secrets.MONITOR_ID }}
  action: 'pause'  # or 'resume'
```
