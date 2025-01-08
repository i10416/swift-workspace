## About

This is a minimal Swift multi-module workspace.

## Build

```sh
# swift --version
swift-driver version: 1.115 Apple Swift version 6.0.2 (swiftlang-6.0.2.1.2 clang-1600.0.26.4)
```

## Workaround LSP Breakage due to Macros

```json
{
    "lldb.launch.expressions": "native",
    "swift.debugger.useDebugAdapterFromToolchain": true,
    "files.watcherExclude": {
        "**/target": true
    }
}
```

## Memo

```
swift build -Xswiftc -parse-as-library
```

