.class Lorg/qiyi/basecard/common/video/defaults/layer/landscape/lpt2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic izT:Lorg/qiyi/basecard/common/video/defaults/layer/landscape/com8;


# direct methods
.method constructor <init>(Lorg/qiyi/basecard/common/video/defaults/layer/landscape/com8;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/basecard/common/video/defaults/layer/landscape/lpt2;->izT:Lorg/qiyi/basecard/common/video/defaults/layer/landscape/com8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lorg/qiyi/basecard/common/video/defaults/layer/landscape/lpt2;->izT:Lorg/qiyi/basecard/common/video/defaults/layer/landscape/com8;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/qiyi/basecard/common/video/defaults/layer/landscape/com8;->setViewVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
