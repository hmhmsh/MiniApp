# MiniApp
SPMを使ったマルチモジュール for UIKit 

## Previewの追加
1. Targetの追加（Target用に自動作成されるinfo.plistは削除）
2. Preview用のSceneDelegateを追加
3. `info.plist`の`Application Scene Manifest/Scene Configuration/Application Session Role/Item/Delegate Class Name`を`$(PRODUCT_MODULE_NAME).$(SCENE_DELEGATE_CLASS_NAME)`に変更
4. TargetのBuild SettingsにAdd a new conditional or user-difined build setting`からKey:Valueを追加
5. Key名を`SCENE_DELEGATE_CLASS_NAME`、ValueをPreview用のSceneDelegateのクラス名（2で追加したクラス名）に設定
6. Build Phasesの`Compile Sources`を`AppDelegate.swift`と`2のSceneDelegate`のみに変更
