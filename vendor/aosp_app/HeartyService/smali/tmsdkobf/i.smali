.class public final Ltmsdkobf/i;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public aa:Ljava/lang/String;

.field public r:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/i;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/i;->url:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/i;->aa:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/i;->r:I

    .line 59
    iget-object v0, p0, Ltmsdkobf/i;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/i;->setUrl(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Ltmsdkobf/i;->aa:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/i;->j(Ljava/lang/String;)V

    .line 61
    iget v0, p0, Ltmsdkobf/i;->r:I

    invoke-virtual {p0, v0}, Ltmsdkobf/i;->h(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "url"
    .parameter "headMd5"
    .parameter "fileSize"

    .prologue
    .line 65
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/i;->url:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/i;->aa:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/i;->r:I

    .line 66
    invoke-virtual {p0, p1}, Ltmsdkobf/i;->setUrl(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Ltmsdkobf/i;->j(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p3}, Ltmsdkobf/i;->h(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 102
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 104
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 106
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/i;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Ltmsdkobf/i;

    .line 79
    .local v0, t:Ltmsdkobf/i;
    iget-object v2, p0, Ltmsdkobf/i;->url:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/i;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/i;->aa:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/i;->aa:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/i;->r:I

    iget v3, v0, Ltmsdkobf/i;->r:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public h(I)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 54
    iput p1, p0, Ltmsdkobf/i;->r:I

    .line 55
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 89
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const/4 v1, 0x0

    return v1
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .parameter "headMd5"

    .prologue
    .line 44
    iput-object p1, p0, Ltmsdkobf/i;->aa:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p1, v2, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/i;->setUrl(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, v1, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/i;->j(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Ltmsdkobf/i;->r:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/i;->h(I)V

    .line 127
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 34
    iput-object p1, p0, Ltmsdkobf/i;->url:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 113
    iget-object v0, p0, Ltmsdkobf/i;->url:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Ltmsdkobf/i;->aa:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 115
    iget v0, p0, Ltmsdkobf/i;->r:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 116
    return-void
.end method
