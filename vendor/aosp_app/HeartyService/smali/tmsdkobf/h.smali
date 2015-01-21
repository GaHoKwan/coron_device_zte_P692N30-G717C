.class public final Ltmsdkobf/h;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public X:I

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/h;->N:Z

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
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/h;->X:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/h;->Y:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/h;->Z:Ljava/lang/String;

    .line 59
    iget v0, p0, Ltmsdkobf/h;->X:I

    invoke-virtual {p0, v0}, Ltmsdkobf/h;->g(I)V

    .line 60
    iget-object v0, p0, Ltmsdkobf/h;->Y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/h;->h(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Ltmsdkobf/h;->Z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/h;->i(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Ltmsdkobf/h;->Z:Ljava/lang/String;

    return-object v0
.end method

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
    sget-boolean v2, Ltmsdkobf/h;->N:Z

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
    check-cast v0, Ltmsdkobf/h;

    .line 79
    .local v0, t:Ltmsdkobf/h;
    iget v2, p0, Ltmsdkobf/h;->X:I

    iget v3, v0, Ltmsdkobf/h;->X:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/h;->Y:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/h;->Y:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/h;->Z:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/h;->Z:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public g(I)V
    .locals 0
    .parameter "safeType"

    .prologue
    .line 34
    iput p1, p0, Ltmsdkobf/h;->X:I

    .line 35
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .parameter "checkDesc"

    .prologue
    .line 44
    iput-object p1, p0, Ltmsdkobf/h;->Y:Ljava/lang/String;

    .line 45
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

.method public i(Ljava/lang/String;)V
    .locals 0
    .parameter "checkAdvise"

    .prologue
    .line 54
    iput-object p1, p0, Ltmsdkobf/h;->Z:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    iget v0, p0, Ltmsdkobf/h;->X:I

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/h;->g(I)V

    .line 130
    invoke-virtual {p1, v2, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/h;->h(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/h;->i(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 113
    iget v0, p0, Ltmsdkobf/h;->X:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 114
    iget-object v0, p0, Ltmsdkobf/h;->Y:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Ltmsdkobf/h;->Y:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 118
    :cond_0
    iget-object v0, p0, Ltmsdkobf/h;->Z:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Ltmsdkobf/h;->Z:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 122
    :cond_1
    return-void
.end method
