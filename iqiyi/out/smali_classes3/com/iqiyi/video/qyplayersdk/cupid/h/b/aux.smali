.class public Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iqiyi/video/qyplayersdk/cupid/com8;


# instance fields
.field private eio:Lcom/iqiyi/video/qyplayersdk/player/lpt8;

.field private ekY:Lcom/iqiyi/video/qyplayersdk/player/com6;

.field private final elP:Landroid/widget/LinearLayout;

.field private elQ:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

.field private elR:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

.field private elS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;",
            ">;"
        }
    .end annotation
.end field

.field private elT:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/iqiyi/video/qyplayersdk/player/com6;Lcom/iqiyi/video/qyplayersdk/player/lpt8;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/iqiyi/video/qyplayersdk/player/com6;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/iqiyi/video/qyplayersdk/player/lpt8;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->ekY:Lcom/iqiyi/video/qyplayersdk/player/com6;

    iput-object p4, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->eio:Lcom/iqiyi/video/qyplayersdk/player/lpt8;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    const-string/jumbo v0, "player_module_ad_corner_container"

    invoke-static {v0}, Lorg/iqiyi/video/aa/lpt4;->getResourceIdForID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elP:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "qiyi_sdk_player_module_ad_corner"

    invoke-static {v1}, Lorg/iqiyi/video/aa/lpt4;->getResourceIdForLayout(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elP:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lorg/qiyi/basecore/h/aux;->cqV()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elQ:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0, p0}, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;->a(Lcom/iqiyi/video/qyplayersdk/cupid/i/aux;)V

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    iget-object v1, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elQ:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v1, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/con;

    iget-object v2, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->eio:Lcom/iqiyi/video/qyplayersdk/player/lpt8;

    invoke-direct {v1, v2, v0, p3, v3}, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/con;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/iqiyi/video/qyplayersdk/player/com6;Lcom/iqiyi/video/qyplayersdk/player/lpt8;)V

    iput-object v1, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elQ:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iqiyi/video/qyplayersdk/cupid/com2;)V
    .locals 0

    return-void
.end method

.method public a(ZZII)V
    .locals 2

    invoke-static {}, Lorg/qiyi/basecore/h/aux;->cqV()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;->a(ZZII)V

    goto :goto_0
.end method

.method public aVA()V
    .locals 2

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0}, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;->aVA()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aXt()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elR:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/qiyi/basecore/h/aux;->cqV()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elP:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elT:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elR:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0, p0}, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;->a(Lcom/iqiyi/video/qyplayersdk/cupid/i/aux;)V

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elT:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elT:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    iget-object v1, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elR:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    iget-object v1, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elR:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elP:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/qiyi/basecore/utils/ScreenTool;->getHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/qiyi/basecore/utils/ScreenTool;->getWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "qiyi_sdk_player_module_ad_pre"

    invoke-static {v1}, Lorg/iqiyi/video/aa/lpt4;->getResourceIdForLayout(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elT:Landroid/view/View;

    new-instance v0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/con;

    iget-object v1, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elT:Landroid/view/View;

    iget-object v3, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->ekY:Lcom/iqiyi/video/qyplayersdk/player/com6;

    iget-object v4, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->eio:Lcom/iqiyi/video/qyplayersdk/player/lpt8;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/con;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/iqiyi/video/qyplayersdk/player/com6;Lcom/iqiyi/video/qyplayersdk/player/lpt8;)V

    iput-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elR:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    goto :goto_0
.end method

.method public aXu()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elR:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    iget-object v1, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elR:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    iget-object v1, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elR:Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elT:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elP:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public f(Lcom/iqiyi/video/qyplayersdk/cupid/a/a/com3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/video/qyplayersdk/cupid/a/a/com3",
            "<",
            "Lcom/iqiyi/video/qyplayersdk/cupid/a/a/com2;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0, p1}, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;->f(Lcom/iqiyi/video/qyplayersdk/cupid/a/a/com3;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public oa()V
    .locals 2

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0}, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;->oa()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 2

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0}, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;->onActivityPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ux(I)V
    .locals 2

    iget-object v0, p0, Lcom/iqiyi/video/qyplayersdk/cupid/h/b/aux;->elS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;

    invoke-interface {v0, p1}, Lcom/iqiyi/video/qyplayersdk/cupid/h/nul;->us(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
