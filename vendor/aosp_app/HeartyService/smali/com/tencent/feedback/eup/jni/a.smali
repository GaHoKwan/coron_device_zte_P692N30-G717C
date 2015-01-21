.class public final Lcom/tencent/feedback/eup/jni/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private jQ:Ljava/lang/String;

.field private kG:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/tencent/feedback/eup/jni/a;->kG:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/tencent/feedback/eup/jni/a;->jQ:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/feedback/eup/jni/a;->jQ:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 36
    new-instance v0, Lcom/tencent/feedback/eup/jni/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/eup/jni/a$1;-><init>(Lcom/tencent/feedback/eup/jni/a;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/tencent/feedback/eup/jni/a;->kG:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Ltmsdkobf/ef;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    .line 58
    const/4 v0, 0x0

    .line 60
    if-eqz v1, :cond_6

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    array-length v6, v1

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v7, v1, v4

    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v5, :cond_1

    .line 69
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 70
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ee;

    .line 73
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ltmsdkobf/ee;->O()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 74
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v0}, Ltmsdkobf/ee;->an()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 75
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v0}, Ltmsdkobf/ee;->ao()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 76
    invoke-virtual {v0}, Ltmsdkobf/ee;->ac()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 79
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 81
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v3, 0x1

    .line 83
    const-string v8, "rqdp{  BufFB existed n:}%s ,ar:%s, md:%s ,ut:%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ltmsdkobf/ee;->O()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Ltmsdkobf/ee;->ae()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v0}, Ltmsdkobf/ee;->ac()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x3

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v8, v9}, Ltmsdkobf/eq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v3

    .line 84
    if-nez v0, :cond_2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 94
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SHA-1"

    invoke-static {v0, v3}, Ltmsdkobf/er;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    .line 97
    if-eqz v0, :cond_3

    .line 99
    new-instance v3, Ltmsdkobf/ee;

    invoke-direct {v3}, Ltmsdkobf/ee;-><init>()V

    .line 100
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ltmsdkobf/ee;->av(I)V

    .line 101
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ltmsdkobf/ee;->aw(Ljava/lang/String;)V

    .line 102
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/feedback/eup/jni/a;->kG:Landroid/content/Context;

    invoke-static {v11}, Ltmsdkobf/dz;->a(Landroid/content/Context;)Ltmsdkobf/dz;

    invoke-static {}, Ltmsdkobf/dz;->ae()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ltmsdkobf/ee;->ay(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ltmsdkobf/ee;->j(J)V

    .line 104
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ltmsdkobf/ee;->i(J)V

    .line 105
    const/4 v7, 0x0

    invoke-static {v0, v7}, Ltmsdkobf/er;->a([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ltmsdkobf/ee;->ax(Ljava/lang/String;)V

    .line 106
    const-string v0, "rqdp{  BufFB new }n:%s , ar:%s , md:%s , cs:%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ltmsdkobf/ee;->O()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ltmsdkobf/ee;->ae()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x2

    invoke-virtual {v3}, Ltmsdkobf/ee;->ac()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v0, v7}, Ltmsdkobf/eq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 111
    :cond_3
    const-string v0, "rqdp{  Error BufFB md fail! pth:}%s , rqdp{  cs:}%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    const/4 v7, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v0, v3}, Ltmsdkobf/eq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 121
    :goto_3
    iget-object v1, p0, Lcom/tencent/feedback/eup/jni/a;->kG:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ltmsdkobf/ef;->a(Landroid/content/Context;I)I

    move-result v1

    .line 122
    const-string v2, "rqdp{  LBFTask del n: }%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 126
    iget-object v1, p0, Lcom/tencent/feedback/eup/jni/a;->kG:Landroid/content/Context;

    invoke-static {v1, v0}, Ltmsdkobf/ef;->c(Landroid/content/Context;Ljava/util/List;)I

    move-result v0

    .line 127
    const-string v1, "rqdp{  LBFTask ins n: }%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_5
    return-void

    .line 117
    :cond_6
    const-string v1, "rqdp{  null in lb !pls to check!}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method
