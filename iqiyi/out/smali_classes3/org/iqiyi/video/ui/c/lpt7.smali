.class Lorg/iqiyi/video/ui/c/lpt7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/iqiyi/video/ui/c/com2;


# instance fields
.field final synthetic gkK:Lorg/iqiyi/video/ui/c/lpt6;


# direct methods
.method constructor <init>(Lorg/iqiyi/video/ui/c/lpt6;)V
    .locals 0

    iput-object p1, p0, Lorg/iqiyi/video/ui/c/lpt7;->gkK:Lorg/iqiyi/video/ui/c/lpt6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public u(Lorg/qiyi/android/corejar/model/BuyInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/iqiyi/video/ui/c/lpt7;->gkK:Lorg/iqiyi/video/ui/c/lpt6;

    invoke-static {v0}, Lorg/iqiyi/video/ui/c/lpt6;->a(Lorg/iqiyi/video/ui/c/lpt6;)Lorg/iqiyi/video/player/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/iqiyi/video/player/z;->c(Lorg/qiyi/android/corejar/model/BuyInfo;)V

    iget-object v0, p0, Lorg/iqiyi/video/ui/c/lpt7;->gkK:Lorg/iqiyi/video/ui/c/lpt6;

    invoke-static {v0, p1}, Lorg/iqiyi/video/ui/c/lpt6;->a(Lorg/iqiyi/video/ui/c/lpt6;Lorg/qiyi/android/corejar/model/BuyInfo;)V

    return-void
.end method
