.class Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/com2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gCV:Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/aux;


# direct methods
.method constructor <init>(Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/aux;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/com2;->gCV:Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/aux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/com2;->gCV:Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/aux;

    invoke-static {v0}, Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/aux;->e(Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/aux;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/com2;->gCV:Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/aux;

    invoke-static {v0}, Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/aux;->a(Lorg/qiyi/android/commonphonepad/pushmessage/qiyi/aux;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "StartHUAWEIPushService context is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/qiyi/android/corejar/b/nul;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "QYPushTaskManager"

    const-string/jumbo v2, " \u73b0\u5728\u6267\u884c\u5230PushManager.requestToken(context)\u3002\u3002\u3002"

    invoke-static {v1, v2}, Lorg/qiyi/android/corejar/b/nul;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/huawei/android/pushagent/api/PushManager;->requestToken(Landroid/content/Context;)V

    invoke-static {}, Lcom/qiyi/qyhotfix/QYTinkerManager;->isSdkLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "5"

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "0"

    invoke-static {v0, v1, v2, v3}, Lorg/qiyi/android/e/a/aux;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
