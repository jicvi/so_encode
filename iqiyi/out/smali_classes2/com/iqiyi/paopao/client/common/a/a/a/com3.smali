.class public Lcom/iqiyi/paopao/client/common/a/a/a/com3;
.super Lcom/iqiyi/paopao/client/common/a/a/a/prn;


# static fields
.field private static final URI:Landroid/net/Uri;

.field private static bjh:Lcom/iqiyi/paopao/client/common/a/a/a/com3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/iqiyi/paopao/client/common/a/a/b/prn;->URI:Landroid/net/Uri;

    sput-object v0, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->bjh:Lcom/iqiyi/paopao/client/common/a/a/a/com3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iqiyi/paopao/client/common/a/a/a/prn;-><init>()V

    return-void
.end method

.method public static Na()Lcom/iqiyi/paopao/client/common/a/a/a/com3;
    .locals 1

    sget-object v0, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->bjh:Lcom/iqiyi/paopao/client/common/a/a/a/com3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iqiyi/paopao/client/common/a/a/a/com3;

    invoke-direct {v0}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;-><init>()V

    sput-object v0, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->bjh:Lcom/iqiyi/paopao/client/common/a/a/a/com3;

    :cond_0
    sget-object v0, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->bjh:Lcom/iqiyi/paopao/client/common/a/a/a/com3;

    return-object v0
.end method

.method private b(Lcom/iqiyi/im/entity/nul;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iqiyi/im/entity/nul;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "page_type"

    invoke-virtual {p1}, Lcom/iqiyi/im/entity/nul;->Gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "end_time"

    invoke-virtual {p1}, Lcom/iqiyi/im/entity/nul;->Gu()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private o(Landroid/database/Cursor;)Lcom/iqiyi/im/entity/nul;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/iqiyi/im/entity/nul;

    invoke-direct {v0}, Lcom/iqiyi/im/entity/nul;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iqiyi/im/entity/nul;->setId(I)V

    const-string/jumbo v1, "page_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iqiyi/im/entity/nul;->dT(Ljava/lang/String;)V

    const-string/jumbo v1, "end_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iqiyi/im/entity/nul;->ck(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/iqiyi/im/entity/nul;Z)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/iqiyi/im/entity/nul;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->dg(J)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->b(Lcom/iqiyi/im/entity/nul;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->MY()Lcom/iqiyi/paopao/client/common/a/a/aux;

    move-result-object v1

    sget-object v2, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, p2}, Lcom/iqiyi/paopao/client/common/a/a/aux;->a(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->b(Lcom/iqiyi/im/entity/nul;)Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->MY()Lcom/iqiyi/paopao/client/common/a/a/aux;

    move-result-object v0

    sget-object v1, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->URI:Landroid/net/Uri;

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iqiyi/paopao/client/common/a/a/aux;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iqiyi/im/entity/nul;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/im/entity/nul;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->a(Lcom/iqiyi/im/entity/nul;Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->hR(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v2, "ShutUpDao"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/iqiyi/paopao/base/utils/l;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method public dg(J)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v3, "id=?"

    new-array v4, v6, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v0, "id"

    aput-object v0, v2, v7

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->MY()Lcom/iqiyi/paopao/client/common/a/a/aux;

    move-result-object v0

    sget-object v1, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->URI:Landroid/net/Uri;

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/iqiyi/paopao/client/common/a/a/aux;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public hR(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iqiyi/im/entity/nul;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->MY()Lcom/iqiyi/paopao/client/common/a/a/aux;

    move-result-object v0

    sget-object v1, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/iqiyi/paopao/client/common/a/a/aux;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->o(Landroid/database/Cursor;)Lcom/iqiyi/im/entity/nul;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_3
    return-object v7

    :cond_1
    :try_start_3
    invoke-static {}, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->MY()Lcom/iqiyi/paopao/client/common/a/a/aux;

    move-result-object v0

    sget-object v1, Lcom/iqiyi/paopao/client/common/a/a/a/com3;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/iqiyi/paopao/client/common/a/a/aux;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method
