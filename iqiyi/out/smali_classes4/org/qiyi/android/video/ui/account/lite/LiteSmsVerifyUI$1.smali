.class Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;


# direct methods
.method constructor <init>(Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI$1;->this$0:Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "psprt_back"

    iget-object v1, p0, Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI$1;->this$0:Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;

    invoke-static {v1}, Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;->access$000(Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iqiyi/passportsdk/e/con;->aC(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI$1;->this$0:Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;

    iget-object v1, p0, Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI$1;->this$0:Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;

    invoke-static {v1}, Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;->access$100(Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;)Lorg/qiyi/android/video/ui/account/lite/SmsCodeViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qiyi/android/video/ui/account/lite/SmsCodeViewHolder;->getFocus()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;->hideKeyboard(Landroid/view/View;)V

    iget-object v0, p0, Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI$1;->this$0:Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;

    invoke-virtual {v0}, Lorg/qiyi/android/video/ui/account/lite/LiteSmsVerifyUI;->dismiss()V

    return-void
.end method
