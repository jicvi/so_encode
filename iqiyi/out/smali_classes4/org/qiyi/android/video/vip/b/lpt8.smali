.class Lorg/qiyi/android/video/vip/b/lpt8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic isI:Lorg/qiyi/android/video/vip/a/com5;

.field final synthetic isK:Lorg/qiyi/android/video/vip/b/lpt4;


# direct methods
.method constructor <init>(Lorg/qiyi/android/video/vip/b/lpt4;Lorg/qiyi/android/video/vip/a/com5;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/android/video/vip/b/lpt8;->isK:Lorg/qiyi/android/video/vip/b/lpt4;

    iput-object p2, p0, Lorg/qiyi/android/video/vip/b/lpt8;->isI:Lorg/qiyi/android/video/vip/a/com5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/qiyi/android/video/vip/b/lpt8;->isK:Lorg/qiyi/android/video/vip/b/lpt4;

    invoke-static {v0}, Lorg/qiyi/android/video/vip/b/lpt4;->d(Lorg/qiyi/android/video/vip/b/lpt4;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/qiyi/android/video/vip/b/lpt8;->isI:Lorg/qiyi/android/video/vip/a/com5;

    invoke-interface {v0}, Lorg/qiyi/android/video/vip/a/com5;->cKh()V

    goto :goto_0
.end method
