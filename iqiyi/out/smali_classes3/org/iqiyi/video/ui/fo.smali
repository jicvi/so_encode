.class Lorg/iqiyi/video/ui/fo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gdz:Lorg/iqiyi/video/ui/fl;


# direct methods
.method constructor <init>(Lorg/iqiyi/video/ui/fl;)V
    .locals 0

    iput-object p1, p0, Lorg/iqiyi/video/ui/fo;->gdz:Lorg/iqiyi/video/ui/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lorg/iqiyi/video/ui/fo;->gdz:Lorg/iqiyi/video/ui/fl;

    iget-object v0, v0, Lorg/iqiyi/video/ui/fl;->gbL:Lorg/iqiyi/video/player/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/iqiyi/video/ui/fo;->gdz:Lorg/iqiyi/video/ui/fl;

    iget-object v0, v0, Lorg/iqiyi/video/ui/fl;->gbL:Lorg/iqiyi/video/player/z;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/iqiyi/video/player/z;->pB(Z)V

    :cond_0
    iget-object v0, p0, Lorg/iqiyi/video/ui/fo;->gdz:Lorg/iqiyi/video/ui/fl;

    iget-object v1, p0, Lorg/iqiyi/video/ui/fo;->gdz:Lorg/iqiyi/video/ui/fl;

    iget-object v1, v1, Lorg/iqiyi/video/ui/fl;->gbL:Lorg/iqiyi/video/player/z;

    invoke-interface {v1}, Lorg/iqiyi/video/player/z;->getDuration()J

    move-result-wide v2

    iget-object v1, p0, Lorg/iqiyi/video/ui/fo;->gdz:Lorg/iqiyi/video/ui/fl;

    iget-object v1, v1, Lorg/iqiyi/video/ui/fl;->gbL:Lorg/iqiyi/video/player/z;

    invoke-interface {v1}, Lorg/iqiyi/video/player/z;->nD()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Lorg/iqiyi/video/v/prn;->fPH:Lorg/iqiyi/video/v/prn;

    invoke-static {v0, v2, v3, v1}, Lorg/iqiyi/video/ui/fl;->a(Lorg/iqiyi/video/ui/fl;JLorg/iqiyi/video/v/prn;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/iqiyi/video/ui/fo;->gdz:Lorg/iqiyi/video/ui/fl;

    iget v0, v0, Lorg/iqiyi/video/ui/fl;->hashCode:I

    invoke-static {v0}, Lorg/iqiyi/video/w/lpt2;->CV(I)V

    :cond_1
    return-void
.end method
