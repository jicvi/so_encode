.class Lorg/qiyi/android/video/view/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic irj:Lorg/qiyi/android/video/view/TabPageIndicator;


# direct methods
.method constructor <init>(Lorg/qiyi/android/video/view/TabPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/android/video/view/ak;->irj:Lorg/qiyi/android/video/view/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lorg/qiyi/android/video/view/an;

    iget-object v0, p0, Lorg/qiyi/android/video/view/ak;->irj:Lorg/qiyi/android/video/view/TabPageIndicator;

    invoke-static {v0}, Lorg/qiyi/android/video/view/TabPageIndicator;->a(Lorg/qiyi/android/video/view/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Lorg/qiyi/android/video/view/an;->getIndex()I

    move-result v1

    iget-object v2, p0, Lorg/qiyi/android/video/view/ak;->irj:Lorg/qiyi/android/video/view/TabPageIndicator;

    invoke-static {v2}, Lorg/qiyi/android/video/view/TabPageIndicator;->a(Lorg/qiyi/android/video/view/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/qiyi/android/video/view/ak;->irj:Lorg/qiyi/android/video/view/TabPageIndicator;

    invoke-static {v0}, Lorg/qiyi/android/video/view/TabPageIndicator;->b(Lorg/qiyi/android/video/view/TabPageIndicator;)Lorg/qiyi/android/video/view/am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/qiyi/android/video/view/ak;->irj:Lorg/qiyi/android/video/view/TabPageIndicator;

    invoke-static {v0}, Lorg/qiyi/android/video/view/TabPageIndicator;->b(Lorg/qiyi/android/video/view/TabPageIndicator;)Lorg/qiyi/android/video/view/am;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/qiyi/android/video/view/am;->gq(I)V

    :cond_0
    return-void
.end method
