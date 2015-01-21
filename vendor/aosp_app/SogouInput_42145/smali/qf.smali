.class Lqf;
.super Lqg;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final a:[Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lqg;-><init>()V

    .line 64
    iput-object p1, p0, Lqf;->a:Ljava/io/File;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lqf;->a:[Ljava/io/File;

    .line 66
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 79
    iget-object v2, p0, Lqf;->a:Lqn;

    invoke-virtual {v2}, Lqn;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    :goto_0
    return v0

    .line 81
    :cond_0
    iget-object v2, p0, Lqf;->a:Ljava/io/File;

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 86
    goto :goto_0

    .line 93
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 94
    iget-object v3, p0, Lqf;->a:Lqn;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v4, v2}, Lqn;->a(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v2, "GestureLibraries"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not save the gesture library in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lqf;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 100
    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    const-string v2, "GestureLibraries"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not save the gesture library in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lqf;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    .line 107
    iget-object v2, p0, Lqf;->a:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 108
    iget-object v4, p0, Lqf;->a:Ljava/io/File;

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    const/4 v3, 0x0

    .line 112
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :try_start_1
    iget-object v3, p0, Lqf;->a:Lqn;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lqn;->a(Ljava/io/InputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 120
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 116
    :goto_1
    :try_start_2
    const-string v3, "GestureLibraries"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load the gesture library from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lqf;->a:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 120
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 121
    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 118
    :goto_2
    :try_start_3
    const-string v3, "GestureLibraries"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load the gesture library from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lqf;->a:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 120
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 121
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 123
    :cond_1
    iget-object v2, p0, Lqf;->a:[Ljava/io/File;

    if-eqz v2, :cond_6

    .line 124
    iget-object v4, p0, Lqf;->a:[Ljava/io/File;

    .line 125
    array-length v2, v4

    new-array v5, v2, [Ljava/io/FileInputStream;

    move v2, v1

    .line 126
    :goto_4
    array-length v3, v4

    if-ge v2, v3, :cond_3

    .line 127
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    aget-object v6, v4, v2

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v5, v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 126
    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 130
    :catch_2
    move-exception v3

    .line 132
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 137
    :cond_3
    :try_start_5
    iget-object v2, p0, Lqf;->a:Lqn;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Lqn;->a([Ljava/io/InputStream;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 142
    array-length v2, v5

    :goto_6
    if-ge v1, v2, :cond_0

    aget-object v3, v5, v1

    .line 143
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 139
    :catch_3
    move-exception v0

    .line 140
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 142
    array-length v2, v5

    move v0, v1

    :goto_7
    if-ge v0, v2, :cond_4

    aget-object v3, v5, v0

    .line 143
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_4
    move v0, v1

    .line 145
    goto/16 :goto_0

    .line 142
    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    array-length v2, v5

    :goto_8
    if-ge v1, v2, :cond_5

    aget-object v3, v5, v1

    .line 143
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 120
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 117
    :catch_4
    move-exception v0

    goto/16 :goto_2

    .line 115
    :catch_5
    move-exception v0

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method
