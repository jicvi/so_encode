.class Lorg/qiyi/video/fragment/com3;
.super Lorg/qiyi/video/module/event/passport/UserTracker;


# instance fields
.field final synthetic jkK:Lorg/qiyi/video/fragment/con;


# direct methods
.method constructor <init>(Lorg/qiyi/video/fragment/con;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/video/fragment/com3;->jkK:Lorg/qiyi/video/fragment/con;

    invoke-direct {p0}, Lorg/qiyi/video/module/event/passport/UserTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentUserChanged(Lcom/iqiyi/passportsdk/model/UserInfo;Lcom/iqiyi/passportsdk/model/UserInfo;)V
    .locals 2

    invoke-static {}, Lorg/qiyi/video/module/icommunication/ModuleManager;->getInstance()Lorg/qiyi/video/module/icommunication/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qiyi/video/module/icommunication/ModuleManager;->getPassportModule()Lorg/qiyi/video/module/icommunication/ICommunication;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/iqiyi/passportsdk/model/PassportExBean;->obtain(I)Lcom/iqiyi/passportsdk/model/PassportExBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/qiyi/video/module/icommunication/ICommunication;->getDataFromModule(Lorg/qiyi/video/module/icommunication/ModuleBean;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/iqiyi/passportsdk/model/UserInfo;->getUserStatus()Lcom/iqiyi/passportsdk/model/com5;

    move-result-object v0

    sget-object v1, Lcom/iqiyi/passportsdk/model/com5;->cTA:Lcom/iqiyi/passportsdk/model/com5;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/qiyi/video/fragment/com3;->jkK:Lorg/qiyi/video/fragment/con;

    invoke-virtual {v0}, Lorg/qiyi/video/fragment/con;->daf()V

    iget-object v0, p0, Lorg/qiyi/video/fragment/com3;->jkK:Lorg/qiyi/video/fragment/con;

    invoke-static {v0}, Lorg/qiyi/video/fragment/con;->b(Lorg/qiyi/video/fragment/con;)Lorg/qiyi/video/module/event/passport/UserTracker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qiyi/video/module/event/passport/UserTracker;->stopTracking()V

    :cond_0
    return-void
.end method
