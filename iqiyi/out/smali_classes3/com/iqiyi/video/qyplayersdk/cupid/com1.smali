.class Lcom/iqiyi/video/qyplayersdk/cupid/com1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iqiyi/video/qyplayersdk/cupid/c/aux;


# instance fields
.field private final ejf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iqiyi/video/qyplayersdk/cupid/com6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iqiyi/video/qyplayersdk/cupid/com6;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/com1;->ejf:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAdMayBeBlocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/com1;->ejf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/video/qyplayersdk/cupid/com6;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/iqiyi/video/qyplayersdk/cupid/com6;->onAdMayBeBlocked(I)V

    :cond_0
    return-void
.end method

.method public xY(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/com1;->ejf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/video/qyplayersdk/cupid/com6;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/iqiyi/video/qyplayersdk/cupid/com6;->xY(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
