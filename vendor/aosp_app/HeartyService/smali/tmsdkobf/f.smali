.class public final Ltmsdkobf/f;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public T:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/f;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/f;->T:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Ltmsdkobf/f;->T:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/f;->c(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter "tipsid"

    .prologue
    .line 30
    iput-object p1, p0, Ltmsdkobf/f;->T:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 72
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 74
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 76
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/f;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 50
    check-cast v0, Ltmsdkobf/f;

    .line 51
    .local v0, t:Ltmsdkobf/f;
    iget-object v1, p0, Ltmsdkobf/f;->T:Ljava/lang/String;

    iget-object v2, v0, Ltmsdkobf/f;->T:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 2
    .parameter "_is"

    .prologue
    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/f;->c(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 83
    iget-object v0, p0, Ltmsdkobf/f;->T:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 84
    return-void
.end method
