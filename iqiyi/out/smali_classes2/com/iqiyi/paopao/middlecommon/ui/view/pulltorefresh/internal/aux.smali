.class Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;
.super Landroid/graphics/drawable/shapes/OvalShape;


# instance fields
.field final synthetic cGw:Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/CircleProgressBar;

.field private mCircleDiameter:I

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I


# direct methods
.method public constructor <init>(Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/CircleProgressBar;II)V
    .locals 7

    iput-object p1, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->cGw:Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/CircleProgressBar;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mShadowPaint:Landroid/graphics/Paint;

    iput p2, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mShadowRadius:I

    iput p3, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mCircleDiameter:I

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mCircleDiameter:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mShadowRadius:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mRadialGradient:Landroid/graphics/RadialGradient;

    iget-object v0, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mRadialGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    iget-object v0, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->cGw:Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/CircleProgressBar;

    invoke-virtual {v0}, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/CircleProgressBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->cGw:Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/CircleProgressBar;

    invoke-virtual {v1}, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/CircleProgressBar;->getHeight()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mCircleDiameter:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mShadowRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/pulltorefresh/internal/aux;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
