.class public Lorg/qiyi/android/card/c/b/aux;
.super Lcom/qiyi/card/pingback/basebuilder/AbstractShowPageBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qiyi/card/pingback/basebuilder/AbstractShowPageBuilder",
        "<",
        "Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qiyi/card/pingback/basebuilder/AbstractShowPageBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/qiyi/basecore/card/model/Page;Landroid/os/Bundle;Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;)V
    .locals 3

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x2721

    iput v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->pingBackType:I

    invoke-static {}, Lorg/qiyi/video/module/icommunication/ModuleManager;->getInstance()Lorg/qiyi/video/module/icommunication/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qiyi/video/module/icommunication/ModuleManager;->getPassportModule()Lorg/qiyi/video/module/icommunication/ICommunication;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/iqiyi/passportsdk/model/PassportExBean;->obtain(I)Lcom/iqiyi/passportsdk/model/PassportExBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/qiyi/video/module/icommunication/ICommunication;->getDataFromModule(Lorg/qiyi/video/module/icommunication/ModuleBean;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/passportsdk/model/UserInfo;

    invoke-static {}, Lorg/qiyi/android/card/c/com2;->getHu()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->hu:Ljava/lang/String;

    const-string/jumbo v1, "22"

    iput-object v1, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->t:Ljava/lang/String;

    const-string/jumbo v1, "0"

    iput-object v1, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->bstp:Ljava/lang/String;

    invoke-static {p1}, Lorg/qiyi/context/QyContext;->getQiyiId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/qiyi/basecore/utils/StringUtils;->encoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->u:Ljava/lang/String;

    invoke-static {p1}, Lorg/qiyi/context/utils/ApkInfoUtil;->isQiyiPackage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "2_22_222"

    :goto_1
    iput-object v1, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->p1:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->pu:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iqiyi/passportsdk/model/UserInfo;->getLoginResponse()Lcom/iqiyi/passportsdk/model/UserInfo$LoginResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/iqiyi/passportsdk/model/UserInfo;->getLoginResponse()Lcom/iqiyi/passportsdk/model/UserInfo$LoginResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/passportsdk/model/UserInfo$LoginResponse;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->pu:Ljava/lang/String;

    :cond_1
    sget-object v0, Lorg/qiyi/context/constants/AppConstants;->param_mkey_phone:Ljava/lang/String;

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->mkey:Ljava/lang/String;

    invoke-static {p1}, Lorg/qiyi/context/QyContext;->getClientVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->v:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->stime:Ljava/lang/String;

    invoke-static {}, Lorg/qiyi/android/card/c/com2;->IU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->mod:Ljava/lang/String;

    invoke-static {}, Lorg/qiyi/context/QyContext;->getSid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->de:Ljava/lang/String;

    invoke-static {p1}, Lorg/qiyi/context/utils/nul;->go(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->qyidv2:Ljava/lang/String;

    if-eqz p2, :cond_4

    iget-object v0, p2, Lorg/qiyi/basecore/card/model/Page;->statistics:Lorg/qiyi/basecore/card/model/statistics/PageStatistics;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lorg/qiyi/basecore/card/model/Page;->statistics:Lorg/qiyi/basecore/card/model/statistics/PageStatistics;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/statistics/PageStatistics;->rpage:Ljava/lang/String;

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->rpage:Ljava/lang/String;

    iget-object v0, p2, Lorg/qiyi/basecore/card/model/Page;->statistics:Lorg/qiyi/basecore/card/model/statistics/PageStatistics;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/statistics/PageStatistics;->from_rpage:Ljava/lang/String;

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->s2:Ljava/lang/String;

    iget-object v0, p2, Lorg/qiyi/basecore/card/model/Page;->statistics:Lorg/qiyi/basecore/card/model/statistics/PageStatistics;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/statistics/PageStatistics;->from_block:Ljava/lang/String;

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->s3:Ljava/lang/String;

    iget-object v0, p2, Lorg/qiyi/basecore/card/model/Page;->statistics:Lorg/qiyi/basecore/card/model/statistics/PageStatistics;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/statistics/PageStatistics;->from_rseat:Ljava/lang/String;

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->s4:Ljava/lang/String;

    iget-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->rpage:Ljava/lang/String;

    invoke-static {v0}, Lorg/qiyi/basecore/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lorg/qiyi/basecore/card/model/Page;->statistics:Lorg/qiyi/basecore/card/model/statistics/PageStatistics;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/statistics/PageStatistics;->block:Ljava/lang/String;

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->rpage:Ljava/lang/String;

    :cond_2
    iget-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->rpage:Ljava/lang/String;

    invoke-static {v0}, Lorg/qiyi/basecore/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lorg/qiyi/basecore/card/model/Page;->page_t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lorg/qiyi/basecore/card/model/Page;->page_st:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->rpage:Ljava/lang/String;

    :cond_3
    iget-object v0, p2, Lorg/qiyi/basecore/card/model/Page;->statistics:Lorg/qiyi/basecore/card/model/statistics/PageStatistics;

    iget-object v0, v0, Lorg/qiyi/basecore/card/model/statistics/PageStatistics;->spid:Ljava/lang/String;

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->purl:Ljava/lang/String;

    iget-object v0, p2, Lorg/qiyi/basecore/card/model/Page;->category_id:Ljava/lang/String;

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->c1:Ljava/lang/String;

    iget-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->c1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lorg/qiyi/basecore/card/model/Page;->page_st:Ljava/lang/String;

    iput-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->c1:Ljava/lang/String;

    :cond_4
    iget-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->blackName:Ljava/util/HashMap;

    const-string/jumbo v1, "batch"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->blackName:Ljava/util/HashMap;

    const-string/jumbo v1, "rseat"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->blackName:Ljava/util/HashMap;

    const-string/jumbo v1, "fc"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->blackName:Ljava/util/HashMap;

    const-string/jumbo v1, "block"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->blackName:Ljava/util/HashMap;

    const-string/jumbo v1, "position"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;->blackName:Ljava/util/HashMap;

    const-string/jumbo v1, "rclktp"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "202_22_222"

    goto/16 :goto_1
.end method

.method public bYw()Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;
    .locals 1

    new-instance v0, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;

    invoke-direct {v0}, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;-><init>()V

    return-object v0
.end method

.method public synthetic buildShowPagePingback(Landroid/content/Context;Lorg/qiyi/basecore/card/model/Page;Landroid/os/Bundle;Lcom/qiyi/card/pingback/bean/BasePingBackBean;)V
    .locals 0

    check-cast p4, Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/qiyi/android/card/c/b/aux;->a(Landroid/content/Context;Lorg/qiyi/basecore/card/model/Page;Landroid/os/Bundle;Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;)V

    return-void
.end method

.method public synthetic createPingbackBean()Lcom/qiyi/card/pingback/bean/BasePingBackBean;
    .locals 1

    invoke-virtual {p0}, Lorg/qiyi/android/card/c/b/aux;->bYw()Lcom/qiyi/card/pingback/bean/LongyuanPingbackBean;

    move-result-object v0

    return-object v0
.end method
