.class public final Lorg/iqiyi/video/data/c;
.super Ljava/lang/Object;


# instance fields
.field private bfM:Z

.field final synthetic fsP:Lorg/iqiyi/video/data/lpt9;

.field private final fsQ:Lorg/iqiyi/video/data/e;

.field private hasErrors:Z

.field private final written:[Z


# direct methods
.method private constructor <init>(Lorg/iqiyi/video/data/lpt9;Lorg/iqiyi/video/data/e;)V
    .locals 1

    iput-object p1, p0, Lorg/iqiyi/video/data/c;->fsP:Lorg/iqiyi/video/data/lpt9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/iqiyi/video/data/c;->fsQ:Lorg/iqiyi/video/data/e;

    invoke-static {p2}, Lorg/iqiyi/video/data/e;->d(Lorg/iqiyi/video/data/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/iqiyi/video/data/c;->written:[Z

    return-void

    :cond_0
    invoke-static {p1}, Lorg/iqiyi/video/data/lpt9;->e(Lorg/iqiyi/video/data/lpt9;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/iqiyi/video/data/lpt9;Lorg/iqiyi/video/data/e;Lorg/iqiyi/video/data/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/iqiyi/video/data/c;-><init>(Lorg/iqiyi/video/data/lpt9;Lorg/iqiyi/video/data/e;)V

    return-void
.end method

.method static synthetic a(Lorg/iqiyi/video/data/c;)Lorg/iqiyi/video/data/e;
    .locals 1

    iget-object v0, p0, Lorg/iqiyi/video/data/c;->fsQ:Lorg/iqiyi/video/data/e;

    return-object v0
.end method

.method static synthetic b(Lorg/iqiyi/video/data/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/iqiyi/video/data/c;->hasErrors:Z

    return p1
.end method

.method static synthetic b(Lorg/iqiyi/video/data/c;)[Z
    .locals 1

    iget-object v0, p0, Lorg/iqiyi/video/data/c;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    iget-object v0, p0, Lorg/iqiyi/video/data/c;->fsP:Lorg/iqiyi/video/data/lpt9;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/iqiyi/video/data/lpt9;->a(Lorg/iqiyi/video/data/lpt9;Lorg/iqiyi/video/data/c;Z)V

    return-void
.end method

.method public commit()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/iqiyi/video/data/c;->hasErrors:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/iqiyi/video/data/c;->fsP:Lorg/iqiyi/video/data/lpt9;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/iqiyi/video/data/lpt9;->a(Lorg/iqiyi/video/data/lpt9;Lorg/iqiyi/video/data/c;Z)V

    iget-object v0, p0, Lorg/iqiyi/video/data/c;->fsP:Lorg/iqiyi/video/data/lpt9;

    iget-object v1, p0, Lorg/iqiyi/video/data/c;->fsQ:Lorg/iqiyi/video/data/e;

    invoke-static {v1}, Lorg/iqiyi/video/data/e;->c(Lorg/iqiyi/video/data/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/iqiyi/video/data/lpt9;->remove(Ljava/lang/String;)Z

    :goto_0
    iput-boolean v2, p0, Lorg/iqiyi/video/data/c;->bfM:Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/iqiyi/video/data/c;->fsP:Lorg/iqiyi/video/data/lpt9;

    invoke-static {v0, p0, v2}, Lorg/iqiyi/video/data/lpt9;->a(Lorg/iqiyi/video/data/lpt9;Lorg/iqiyi/video/data/c;Z)V

    goto :goto_0
.end method

.method public fO(I)Ljava/io/OutputStream;
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/iqiyi/video/data/c;->fsP:Lorg/iqiyi/video/data/lpt9;

    invoke-static {v0}, Lorg/iqiyi/video/data/lpt9;->e(Lorg/iqiyi/video/data/lpt9;)I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "be greater than 0 and less than the maximum value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/iqiyi/video/data/c;->fsP:Lorg/iqiyi/video/data/lpt9;

    invoke-static {v2}, Lorg/iqiyi/video/data/lpt9;->e(Lorg/iqiyi/video/data/lpt9;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lorg/iqiyi/video/data/c;->fsP:Lorg/iqiyi/video/data/lpt9;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lorg/iqiyi/video/data/c;->fsQ:Lorg/iqiyi/video/data/e;

    invoke-static {v0}, Lorg/iqiyi/video/data/e;->a(Lorg/iqiyi/video/data/e;)Lorg/iqiyi/video/data/c;

    move-result-object v0

    if-eq v0, p0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/iqiyi/video/data/c;->fsQ:Lorg/iqiyi/video/data/e;

    invoke-static {v0}, Lorg/iqiyi/video/data/e;->d(Lorg/iqiyi/video/data/e;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/iqiyi/video/data/c;->written:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_3
    iget-object v0, p0, Lorg/iqiyi/video/data/c;->fsQ:Lorg/iqiyi/video/data/e;

    invoke-virtual {v0, p1}, Lorg/iqiyi/video/data/e;->fQ(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    :goto_0
    :try_start_3
    new-instance v0, Lorg/iqiyi/video/data/d;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lorg/iqiyi/video/data/d;-><init>(Lorg/iqiyi/video/data/c;Ljava/io/OutputStream;Lorg/iqiyi/video/data/a;)V

    monitor-exit v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/iqiyi/video/data/c;->fsP:Lorg/iqiyi/video/data/lpt9;

    invoke-static {v0}, Lorg/iqiyi/video/data/lpt9;->f(Lorg/iqiyi/video/data/lpt9;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lorg/iqiyi/video/data/lpt9;->bsM()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
