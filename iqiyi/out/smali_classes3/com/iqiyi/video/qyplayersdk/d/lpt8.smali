.class Lcom/iqiyi/video/qyplayersdk/d/lpt8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic ehQ:Lcom/iqiyi/video/qyplayersdk/d/lpt1;


# direct methods
.method constructor <init>(Lcom/iqiyi/video/qyplayersdk/d/lpt1;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/video/qyplayersdk/d/lpt8;->ehQ:Lcom/iqiyi/video/qyplayersdk/d/lpt1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/d/lpt8;->ehQ:Lcom/iqiyi/video/qyplayersdk/d/lpt1;

    invoke-static {v0}, Lcom/iqiyi/video/qyplayersdk/d/lpt1;->a(Lcom/iqiyi/video/qyplayersdk/d/lpt1;)Lcom/iqiyi/video/qyplayersdk/d/com4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/d/lpt8;->ehQ:Lcom/iqiyi/video/qyplayersdk/d/lpt1;

    invoke-static {v0}, Lcom/iqiyi/video/qyplayersdk/d/lpt1;->a(Lcom/iqiyi/video/qyplayersdk/d/lpt1;)Lcom/iqiyi/video/qyplayersdk/d/com4;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iqiyi/video/qyplayersdk/d/com4;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
