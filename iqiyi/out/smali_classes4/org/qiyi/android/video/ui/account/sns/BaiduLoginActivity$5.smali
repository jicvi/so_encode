.class Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity;

.field final synthetic val$timeoutView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity$5;->this$0:Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity;

    iput-object p2, p0, Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity$5;->val$timeoutView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity$5;->this$0:Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity;

    invoke-static {v0}, Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity;->access$000(Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v0

    new-instance v1, Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity$5$1;

    invoke-direct {v1, p0}, Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity$5$1;-><init>(Lorg/qiyi/android/video/ui/account/sns/BaiduLoginActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
