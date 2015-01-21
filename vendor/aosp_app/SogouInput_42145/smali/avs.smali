.class public final Lavs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lavs;

.field static final synthetic a:Z


# instance fields
.field private a:Lavv;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/HashMap;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lavs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lavs;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Laox;->g:Ljava/lang/String;

    iput-object v0, p0, Lavs;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lavt;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lavs;-><init>()V

    return-void
.end method

.method public static a()Lavs;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lavs;->a:Lavs;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lavs;

    invoke-direct {v0}, Lavs;-><init>()V

    sput-object v0, Lavs;->a:Lavs;

    .line 42
    :cond_0
    sget-object v0, Lavs;->a:Lavs;

    return-object v0
.end method

.method static synthetic a(Lavs;)Lavs;
    .locals 0
    .parameter

    .prologue
    .line 18
    sput-object p0, Lavs;->a:Lavs;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-static {p1}, Layy;->a(Ljava/lang/String;)Layx;

    move-result-object v0

    .line 211
    new-instance v1, Lavz;

    invoke-direct {v1}, Lavz;-><init>()V

    invoke-virtual {v1, v0}, Lavz;->a(Layx;)Lavz;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lavs;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method static synthetic b()Lavs;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lavs;->a:Lavs;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lavs;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lavs;->a:Lavv;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lavs;->a:Lavv;

    invoke-virtual {v0}, Lavv;->a()Lavz;

    move-result-object v0

    invoke-virtual {v0}, Lavz;->a()I

    move-result v0

    return v0
.end method

.method public final a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    sget-boolean v0, Lavs;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lavs;->a:Lavv;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lavs;->a:Lavv;

    invoke-virtual {v0}, Lavv;->a()Lavz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lavz;->a(II)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lavz;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lavs;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavz;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Layx;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lavs;->a:Lavv;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lavs;->a:Lavv;

    invoke-virtual {v0, p1}, Lavv;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    sget-boolean v0, Lavs;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lavs;->a:Lavv;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lavs;->a:Lavv;

    invoke-virtual {v0}, Lavv;->a()Lavz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lavz;->a(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lavs;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lavs;->a:Ljava/util/HashMap;

    .line 204
    :cond_0
    iget-object v0, p0, Lavs;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lavs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lavs;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lavs;->a:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 190
    sget-boolean v0, Lavs;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lavs;->a:Lavv;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lavs;->a:Lavv;

    invoke-virtual {v0}, Lavv;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lavs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchThemeTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavs;->c(Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 100
    if-eqz v3, :cond_1

    iget-object v0, p0, Lavs;->a:Ljava/lang/String;

    .line 103
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    :cond_0
    :goto_1
    return v2

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lavs;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    new-instance v1, Lavv;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lavv;-><init>(Ljava/lang/String;)V

    .line 111
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Lavv;->a()Lavz;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget v4, v0, Lavz;->a:I

    if-gt v4, v5, :cond_3

    iget v0, v0, Lavz;->a:I

    if-ge v0, v5, :cond_5

    .line 115
    :cond_3
    new-instance v0, Lavv;

    iget-object v1, p0, Lavs;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lavv;-><init>(Ljava/lang/String;)V

    .line 119
    :goto_2
    invoke-virtual {v0}, Lavv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laxq;->a(Ljava/lang/String;)V

    .line 120
    const-string v1, "images.ini"

    invoke-virtual {v0, v1}, Lavv;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v1

    invoke-static {v1}, Laxq;->a(Layx;)V

    .line 123
    iput-object v0, p0, Lavs;->a:Lavv;

    .line 124
    if-nez v3, :cond_4

    const/4 v0, 0x1

    :goto_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchThemeTo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lavs;->c(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 130
    if-eqz v3, :cond_2

    iget-object v0, p0, Lavs;->a:Ljava/lang/String;

    .line 133
    :goto_0
    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Laox;->z:Ljava/lang/String;

    .line 134
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    :cond_1
    :goto_1
    return v2

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lavs;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_3
    new-instance v1, Lavv;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lavv;-><init>(Ljava/lang/String;)V

    .line 145
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1}, Lavv;->a()Lavz;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1

    .line 148
    iget v4, v0, Lavz;->a:I

    if-gt v4, v5, :cond_4

    iget v0, v0, Lavz;->a:I

    if-ge v0, v5, :cond_6

    .line 149
    :cond_4
    new-instance v0, Lavv;

    iget-object v1, p0, Lavs;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lavv;-><init>(Ljava/lang/String;)V

    .line 153
    :goto_2
    invoke-virtual {v0}, Lavv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laxq;->a(Ljava/lang/String;)V

    .line 154
    const-string v1, "images.ini"

    invoke-virtual {v0, v1}, Lavv;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v1

    invoke-static {v1}, Laxq;->a(Layx;)V

    .line 157
    iput-object v0, p0, Lavs;->a:Lavv;

    .line 158
    if-nez v3, :cond_5

    const/4 v0, 0x1

    :goto_3
    move v2, v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lavs;->b:Ljava/lang/String;

    .line 83
    return-void
.end method
