.class public Lcom/qiyi/video/cardview/am;
.super Lcom/qiyi/video/cardview/a/aux;


# instance fields
.field private eHH:Lorg/qiyi/android/corejar/model/DynamicInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qiyi/video/cardview/a/aux;-><init>()V

    new-instance v0, Lorg/qiyi/android/corejar/model/DynamicInfo;

    invoke-direct {v0}, Lorg/qiyi/android/corejar/model/DynamicInfo;-><init>()V

    iput-object v0, p0, Lcom/qiyi/video/cardview/am;->eHH:Lorg/qiyi/android/corejar/model/DynamicInfo;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/qiyi/video/cardview/a/con;)V
    .locals 6

    const/16 v5, 0x8

    invoke-super {p0, p1, p2}, Lcom/qiyi/video/cardview/a/aux;->a(Landroid/view/View;Lcom/qiyi/video/cardview/a/con;)V

    const v0, 0x7f0a0c2f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/android/bitmapfun/ui/RoundImageView;

    const v1, 0x7f0a08e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a08e7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a10c5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/qiyi/video/cardview/am;->eHH:Lorg/qiyi/android/corejar/model/DynamicInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/qiyi/video/cardview/am;->eHH:Lorg/qiyi/android/corejar/model/DynamicInfo;

    iget-object v4, v4, Lorg/qiyi/android/corejar/model/DynamicInfo;->mUserInfo:Lorg/qiyi/android/corejar/model/com7;

    iget-object v4, v4, Lorg/qiyi/android/corejar/model/com7;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qiyi/video/android/bitmapfun/ui/RoundImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/qiyi/basecore/imageloader/ImageLoader;->loadImage(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/qiyi/video/cardview/am;->eHH:Lorg/qiyi/android/corejar/model/DynamicInfo;

    iget-object v0, v0, Lorg/qiyi/android/corejar/model/DynamicInfo;->mUserInfo:Lorg/qiyi/android/corejar/model/com7;

    iget-object v0, v0, Lorg/qiyi/android/corejar/model/com7;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_1

    iget-object v0, p0, Lcom/qiyi/video/cardview/am;->eHH:Lorg/qiyi/android/corejar/model/DynamicInfo;

    iget-object v0, v0, Lorg/qiyi/android/corejar/model/DynamicInfo;->mUserInfo:Lorg/qiyi/android/corejar/model/com7;

    iget-object v0, v0, Lorg/qiyi/android/corejar/model/com7;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Lcom/qiyi/video/cardview/e/nul;

    sget-object v1, Lcom/qiyi/video/cardview/e/prn;->eLh:Lcom/qiyi/video/cardview/e/prn;

    iget-object v4, p0, Lcom/qiyi/video/cardview/am;->eHH:Lorg/qiyi/android/corejar/model/DynamicInfo;

    iget-object v4, v4, Lorg/qiyi/android/corejar/model/DynamicInfo;->mUserInfo:Lorg/qiyi/android/corejar/model/com7;

    iget-object v4, v4, Lorg/qiyi/android/corejar/model/com7;->uid:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v4}, Lcom/qiyi/video/cardview/e/nul;-><init>(Lcom/qiyi/video/cardview/e/prn;Lcom/qiyi/video/cardview/a/aux;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qiyi/video/cardview/am;->eJD:Lcom/qiyi/video/cardview/e/aux;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "\u8ba2\u9605\u4e86"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qiyi/video/cardview/am;->eHH:Lorg/qiyi/android/corejar/model/DynamicInfo;

    iget-object v0, v0, Lorg/qiyi/android/corejar/model/DynamicInfo;->mUserInfo:Lorg/qiyi/android/corejar/model/com7;

    iget-object v0, v0, Lorg/qiyi/android/corejar/model/com7;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lcom/qiyi/video/cardview/d/aux;Lhessian/ViewObject;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/qiyi/video/cardview/a/aux;->a(Lcom/qiyi/video/cardview/d/aux;Lhessian/ViewObject;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/qiyi/video/cardview/d/aux;->eKp:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/qiyi/basecore/utils/StringUtils;->isEmptyList(Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lhessian/ViewObject;->dynamicInfoArray:Ljava/util/Map;

    invoke-static {v0}, Lorg/qiyi/basecore/utils/StringUtils;->isEmptyMap(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lhessian/ViewObject;->dynamicInfoArray:Ljava/util/Map;

    iget-object v1, p1, Lcom/qiyi/video/cardview/d/aux;->eKp:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qiyi/android/corejar/model/DynamicInfo;

    iput-object v0, p0, Lcom/qiyi/video/cardview/am;->eHH:Lorg/qiyi/android/corejar/model/DynamicInfo;

    :cond_0
    return-void
.end method

.method public jS(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030353

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
