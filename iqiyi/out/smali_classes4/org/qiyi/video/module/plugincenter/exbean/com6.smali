.class Lorg/qiyi/video/module/plugincenter/exbean/com6;
.super Lorg/qiyi/video/module/plugincenter/exbean/a/com1;


# instance fields
.field final synthetic jtI:Lorg/qiyi/video/module/plugincenter/exbean/com4;


# direct methods
.method public constructor <init>(Lorg/qiyi/video/module/plugincenter/exbean/com4;Lorg/qiyi/video/module/plugincenter/exbean/com2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/video/module/plugincenter/exbean/com6;->jtI:Lorg/qiyi/video/module/plugincenter/exbean/com4;

    invoke-direct {p0, p2, p3}, Lorg/qiyi/video/module/plugincenter/exbean/a/com1;-><init>(Lorg/qiyi/video/module/plugincenter/exbean/com2;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public XG(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/qiyi/video/module/plugincenter/exbean/com6;->jtI:Lorg/qiyi/video/module/plugincenter/exbean/com4;

    iget-object v0, v0, Lorg/qiyi/video/module/plugincenter/exbean/com4;->jtG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qiyi/video/module/plugincenter/exbean/nul;

    invoke-virtual {v0}, Lorg/qiyi/video/module/plugincenter/exbean/nul;->ddk()Lorg/qiyi/video/module/plugincenter/exbean/com2;

    move-result-object v0

    iget-object v3, v0, Lorg/qiyi/video/module/plugincenter/exbean/com2;->jtw:Lorg/qiyi/video/module/plugincenter/exbean/a/aux;

    instance-of v3, v3, Lorg/qiyi/video/module/plugincenter/exbean/a/com3;

    if-nez v3, :cond_1

    iget-object v0, v0, Lorg/qiyi/video/module/plugincenter/exbean/com2;->jtw:Lorg/qiyi/video/module/plugincenter/exbean/a/aux;

    invoke-virtual {v0, p1}, Lorg/qiyi/video/module/plugincenter/exbean/a/aux;->XG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
