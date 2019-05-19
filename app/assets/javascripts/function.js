$(function(){
    $('#vegas').vegas({
        slides: [
            { src: '/images/spain.jpg' },
            { src: '/images/fuku.jpg' },
            { src: '/images/flower.jpg' },
            { src: '/images/girl.jpg' }
        ],
        overlay: './images/overlays/01.png', //フォルダ『overlays』の中からオーバーレイのパターン画像を選択
        transition: 'fade', //スライドを遷移させる際のアニメーション
        transitionDuration: 4000, //スライドの遷移アニメーションの時間
        delay: 10000, //スライド切り替え時の遅延時間
        animation: 'random', //スライド表示中のアニメーション
        animationDuration: 20000, //スライド表示中のアニメーションの時間
    });
});