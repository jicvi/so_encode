.class Lcom/iqiyi/publisher/ui/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iqiyi/publisher/d/nul;


# instance fields
.field final synthetic cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;


# direct methods
.method constructor <init>(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public M(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public ayT()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;III)V
    .locals 2

    iget-object v0, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v0}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->f(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v0}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->g(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MagicSwapDemoActivity"

    const-string/jumbo v1, "player is ready, now just play local file"

    invoke-static {v0, v1}, Lcom/iqiyi/paopao/base/utils/l;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v0}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->a(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Lcom/iqiyi/publisher/player/VideoPlayerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/publisher/player/VideoPlayerLayout;->aAt()V

    iget-object v0, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v0}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->a(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Lcom/iqiyi/publisher/player/VideoPlayerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v1}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->b(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iqiyi/publisher/player/VideoPlayerLayout;->startPlay(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "MagicSwapDemoActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onDownloadCompleted, file path: "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/iqiyi/paopao/base/utils/l;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v1}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->c(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v2}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->b(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v1}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->f(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v1}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->g(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MagicSwapDemoActivity"

    const-string/jumbo v2, "player is ready, now just play local file"

    invoke-static {v1, v2}, Lcom/iqiyi/paopao/base/utils/l;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v1}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->a(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Lcom/iqiyi/publisher/player/VideoPlayerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/publisher/player/VideoPlayerLayout;->aAt()V

    iget-object v1, p0, Lcom/iqiyi/publisher/ui/activity/b;->cZV:Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;

    invoke-static {v1}, Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;->a(Lcom/iqiyi/publisher/ui/activity/MagicSwapDemoActivity;)Lcom/iqiyi/publisher/player/VideoPlayerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iqiyi/publisher/player/VideoPlayerLayout;->startPlay(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
