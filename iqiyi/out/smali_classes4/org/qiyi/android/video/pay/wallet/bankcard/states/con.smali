.class Lorg/qiyi/android/video/pay/wallet/bankcard/states/con;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hSt:Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;


# direct methods
.method constructor <init>(Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/android/video/pay/wallet/bankcard/states/con;->hSt:Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/qiyi/android/video/pay/wallet/bankcard/states/con;->hSt:Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;

    invoke-static {v0}, Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;->a(Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;)V

    iget-object v0, p0, Lorg/qiyi/android/video/pay/wallet/bankcard/states/con;->hSt:Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;

    invoke-static {v0}, Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;->b(Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/qiyi/android/video/pay/wallet/bankcard/states/con;->hSt:Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;

    invoke-static {v0}, Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;->c(Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/qiyi/android/video/pay/wallet/bankcard/states/con;->hSt:Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;

    invoke-virtual {v1}, Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lorg/qiyi/android/video/pay/wallet/bankcard/states/con;->hSt:Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;

    invoke-static {v1}, Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;->c(Lorg/qiyi/android/video/pay/wallet/bankcard/states/WBankCardPayState;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
