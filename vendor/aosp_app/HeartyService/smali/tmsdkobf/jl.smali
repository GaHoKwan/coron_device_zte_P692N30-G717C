.class public final Ltmsdkobf/jl;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public mId:I

.field public tB:Z

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/jl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/jl;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/jl;->mId:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/jl;->url:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/jl;->tB:Z

    .line 59
    iget v0, p0, Ltmsdkobf/jl;->mId:I

    invoke-virtual {p0, v0}, Ltmsdkobf/jl;->bd(I)V

    .line 60
    iget-object v0, p0, Ltmsdkobf/jl;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/jl;->setUrl(Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Ltmsdkobf/jl;->tB:Z

    invoke-virtual {p0, v0}, Ltmsdkobf/jl;->v(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public final bd(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Ltmsdkobf/jl;->mId:I

    .line 35
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :cond_0
    return-object v0

    .line 106
    :catch_0
    move-exception v1

    sget-boolean v1, Ltmsdkobf/jl;->N:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 131
    new-instance v0, Ltmsdkobf/db;

    invoke-direct {v0, p1, p2}, Ltmsdkobf/db;-><init>(Ljava/lang/StringBuilder;I)V

    .line 132
    iget v1, p0, Ltmsdkobf/jl;->mId:I

    const-string v2, "mId"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 133
    iget-object v1, p0, Ltmsdkobf/jl;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 134
    iget-boolean v1, p0, Ltmsdkobf/jl;->tB:Z

    const-string v2, "needDetail"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ZLjava/lang/String;)Ltmsdkobf/db;

    .line 135
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    check-cast p1, Ltmsdkobf/jl;

    .line 80
    iget v1, p0, Ltmsdkobf/jl;->mId:I

    iget v2, p1, Ltmsdkobf/jl;->mId:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Ltmsdkobf/jl;->url:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/jl;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-boolean v1, p0, Ltmsdkobf/jl;->tB:Z

    iget-boolean v2, p1, Ltmsdkobf/jl;->tB:Z

    invoke-static {v1, v2}, Ltmsdkobf/dg;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ltmsdkobf/jl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 89
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    iget v0, p0, Ltmsdkobf/jl;->mId:I

    invoke-virtual {p1, v0, v2, v1}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/jl;->mId:I

    .line 123
    invoke-virtual {p1, v1, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/jl;->url:Ljava/lang/String;

    .line 125
    iget-boolean v0, p0, Ltmsdkobf/jl;->tB:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Ltmsdkobf/jl;->tB:Z

    .line 127
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Ltmsdkobf/jl;->url:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final v(Z)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Ltmsdkobf/jl;->tB:Z

    .line 55
    return-void
.end method

.method public final writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget v0, p0, Ltmsdkobf/jl;->mId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 114
    iget-object v0, p0, Ltmsdkobf/jl;->url:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 115
    iget-boolean v0, p0, Ltmsdkobf/jl;->tB:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(ZI)V

    .line 116
    return-void
.end method
