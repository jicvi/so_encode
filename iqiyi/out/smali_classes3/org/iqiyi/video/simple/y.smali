.class public Lorg/iqiyi/video/simple/y;
.super Lcom/video/qiyi/sdk/v2/player/QYListenerExpend;


# instance fields
.field final synthetic fPz:Lorg/iqiyi/video/simple/r;


# direct methods
.method public constructor <init>(Lorg/iqiyi/video/simple/r;)V
    .locals 0

    iput-object p1, p0, Lorg/iqiyi/video/simple/y;->fPz:Lorg/iqiyi/video/simple/r;

    invoke-direct {p0}, Lcom/video/qiyi/sdk/v2/player/QYListenerExpend;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestShowOrHideNetStatusTip(ZI)V
    .locals 4

    const-string/jumbo v0, "SimpleListenerAdapter"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onRequestShowOrHideNetStatusTip, show = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " ; status "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/qiyi/android/corejar/b/nul;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/iqiyi/video/simple/y;->fPz:Lorg/iqiyi/video/simple/r;

    invoke-static {v0}, Lorg/iqiyi/video/simple/r;->a(Lorg/iqiyi/video/simple/r;)Lorg/iqiyi/video/simple/com6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/iqiyi/video/simple/y;->fPz:Lorg/iqiyi/video/simple/r;

    invoke-static {v0}, Lorg/iqiyi/video/simple/r;->a(Lorg/iqiyi/video/simple/r;)Lorg/iqiyi/video/simple/com6;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/iqiyi/video/simple/com6;->l(ZI)V

    :cond_0
    return-void
.end method

.method public onRequestShowOrHideTrySeeTips(Z)V
    .locals 1

    iget-object v0, p0, Lorg/iqiyi/video/simple/y;->fPz:Lorg/iqiyi/video/simple/r;

    invoke-static {v0}, Lorg/iqiyi/video/simple/r;->a(Lorg/iqiyi/video/simple/r;)Lorg/iqiyi/video/simple/com6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/iqiyi/video/simple/y;->fPz:Lorg/iqiyi/video/simple/r;

    invoke-static {v0}, Lorg/iqiyi/video/simple/r;->a(Lorg/iqiyi/video/simple/r;)Lorg/iqiyi/video/simple/com6;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/iqiyi/video/simple/com6;->pP(Z)V

    :cond_0
    return-void
.end method

.method public onRequestShowOrHideVipTip(ZI)V
    .locals 4

    const-string/jumbo v0, "SimpleListenerAdapter"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onRequestShowOrHideVipTip , show = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/qiyi/android/corejar/b/nul;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/iqiyi/video/simple/y;->fPz:Lorg/iqiyi/video/simple/r;

    invoke-static {v0}, Lorg/iqiyi/video/simple/r;->a(Lorg/iqiyi/video/simple/r;)Lorg/iqiyi/video/simple/com6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/iqiyi/video/simple/y;->fPz:Lorg/iqiyi/video/simple/r;

    invoke-static {v0}, Lorg/iqiyi/video/simple/r;->a(Lorg/iqiyi/video/simple/r;)Lorg/iqiyi/video/simple/com6;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/iqiyi/video/simple/com6;->m(ZI)V

    :cond_0
    return-void
.end method

.method public onStartMovie()V
    .locals 2

    const-string/jumbo v0, "SimpleListenerAdapter"

    const-string/jumbo v1, "onStartMovie"

    invoke-static {v0, v1}, Lorg/qiyi/android/corejar/b/nul;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/iqiyi/video/simple/y;->fPz:Lorg/iqiyi/video/simple/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/iqiyi/video/simple/r;->a(Lorg/iqiyi/video/simple/r;Z)Z

    iget-object v0, p0, Lorg/iqiyi/video/simple/y;->fPz:Lorg/iqiyi/video/simple/r;

    invoke-static {v0}, Lorg/iqiyi/video/simple/r;->a(Lorg/iqiyi/video/simple/r;)Lorg/iqiyi/video/simple/com6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/iqiyi/video/simple/y;->fPz:Lorg/iqiyi/video/simple/r;

    invoke-static {v0}, Lorg/iqiyi/video/simple/r;->a(Lorg/iqiyi/video/simple/r;)Lorg/iqiyi/video/simple/com6;

    move-result-object v0

    invoke-interface {v0}, Lorg/iqiyi/video/simple/com6;->bEh()V

    :cond_0
    return-void
.end method
