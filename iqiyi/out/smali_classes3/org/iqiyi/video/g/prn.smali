.class Lorg/iqiyi/video/g/prn;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic frG:Lorg/iqiyi/video/g/nul;


# direct methods
.method constructor <init>(Lorg/iqiyi/video/g/nul;)V
    .locals 0

    iput-object p1, p0, Lorg/iqiyi/video/g/prn;->frG:Lorg/iqiyi/video/g/nul;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/iqiyi/video/g/prn;->frG:Lorg/iqiyi/video/g/nul;

    invoke-static {v0}, Lorg/iqiyi/video/g/nul;->a(Lorg/iqiyi/video/g/nul;)Lorg/iqiyi/video/player/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/iqiyi/video/g/prn;->frG:Lorg/iqiyi/video/g/nul;

    invoke-static {v0}, Lorg/iqiyi/video/g/nul;->a(Lorg/iqiyi/video/g/nul;)Lorg/iqiyi/video/player/ai;

    move-result-object v0

    invoke-interface {v0}, Lorg/iqiyi/video/player/ai;->bCb()V

    :cond_0
    return-void
.end method
