import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // viewDidLoadが実行されるときにsetGradientLayerを実行する
        setGradientLayer()
    }
    
    func setGradientLayer() {
        /*
         1. CAGradientLayerのインスタンスを作成
         2. グラレーションに使用する色を設定している
         3. CAGradientLayerのrect（位置と大きさを設定している）
         4. viewにグラデーションを適用
         */
        let gradientLayer = CAGradientLayer() // 1
        gradientLayer.colors = [UIColor.systemBlue.cgColor, UIColor.systemTeal.cgColor, UIColor.systemBackground.cgColor] // 2
        gradientLayer.frame = view.bounds // 3
        view.layer.insertSublayer(gradientLayer, at: 0) // 4
    }
}
