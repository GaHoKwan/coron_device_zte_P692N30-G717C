.class public final Ltmsdkobf/kf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mName:Ljava/lang/String;

.field private yn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Ltmsdkobf/kf;->mName:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TMSProperties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/kf;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/kf;->yn:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private ck(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "key"

    .prologue
    .line 134
    return-object p1
.end method

.method private fg()Ltmsdkobf/jg;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/kf;->yn:Ljava/lang/String;

    invoke-static {v0, v1}, Ltmsdkobf/jh;->e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;JZ)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "autoCommit"

    .prologue
    .line 81
    invoke-direct {p0}, Ltmsdkobf/kf;->fg()Ltmsdkobf/jg;

    move-result-object v0

    invoke-direct {p0, p1}, Ltmsdkobf/kf;->ck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Ltmsdkobf/jg;->a(Ljava/lang/String;J)Z

    .line 82
    if-eqz p4, :cond_0

    .line 85
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "autoCommit"

    .prologue
    .line 107
    invoke-direct {p0}, Ltmsdkobf/kf;->fg()Ltmsdkobf/jg;

    move-result-object v0

    invoke-direct {p0, p1}, Ltmsdkobf/kf;->ck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ltmsdkobf/jg;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    if-eqz p3, :cond_0

    .line 111
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "autoCommit"

    .prologue
    .line 94
    invoke-direct {p0}, Ltmsdkobf/kf;->fg()Ltmsdkobf/jg;

    move-result-object v0

    invoke-direct {p0, p1}, Ltmsdkobf/kf;->ck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ltmsdkobf/jg;->c(Ljava/lang/String;Z)Z

    .line 95
    if-eqz p3, :cond_0

    .line 98
    :cond_0
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultvalue"

    .prologue
    .line 126
    invoke-direct {p0}, Ltmsdkobf/kf;->fg()Ltmsdkobf/jg;

    move-result-object v0

    invoke-direct {p0, p1}, Ltmsdkobf/kf;->ck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ltmsdkobf/jg;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defaultvalue"

    .prologue
    .line 118
    invoke-direct {p0}, Ltmsdkobf/kf;->fg()Ltmsdkobf/jg;

    move-result-object v0

    invoke-direct {p0, p1}, Ltmsdkobf/kf;->ck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Ltmsdkobf/jg;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultvalue"

    .prologue
    .line 130
    invoke-direct {p0}, Ltmsdkobf/kf;->fg()Ltmsdkobf/jg;

    move-result-object v0

    invoke-direct {p0, p1}, Ltmsdkobf/kf;->ck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ltmsdkobf/jg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
