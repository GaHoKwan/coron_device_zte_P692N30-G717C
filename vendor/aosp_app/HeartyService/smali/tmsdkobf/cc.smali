.class public final Ltmsdkobf/cc;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public il:Ljava/lang/String;

.field public im:I

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/cc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/cc;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cc;->title:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cc;->il:Ljava/lang/String;

    .line 25
    iput v1, p0, Ltmsdkobf/cc;->type:I

    .line 27
    iput v1, p0, Ltmsdkobf/cc;->im:I

    .line 71
    iget-object v0, p0, Ltmsdkobf/cc;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/cc;->setTitle(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Ltmsdkobf/cc;->il:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/cc;->af(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Ltmsdkobf/cc;->type:I

    invoke-virtual {p0, v0}, Ltmsdkobf/cc;->setType(I)V

    .line 74
    iget v0, p0, Ltmsdkobf/cc;->im:I

    invoke-virtual {p0, v0}, Ltmsdkobf/cc;->ag(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public af(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 46
    iput-object p1, p0, Ltmsdkobf/cc;->il:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public ag(I)V
    .locals 0
    .parameter "atype"

    .prologue
    .line 66
    iput p1, p0, Ltmsdkobf/cc;->im:I

    .line 67
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 117
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 123
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 119
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/cc;->N:Z

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

    .line 87
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 92
    check-cast v0, Ltmsdkobf/cc;

    .line 93
    .local v0, t:Ltmsdkobf/cc;
    iget-object v2, p0, Ltmsdkobf/cc;->title:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/cc;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/cc;->il:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/cc;->il:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/cc;->type:I

    iget v3, v0, Ltmsdkobf/cc;->type:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/cc;->im:I

    iget v3, v0, Ltmsdkobf/cc;->im:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Ltmsdkobf/cc;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cc;->setTitle(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v2, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cc;->af(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Ltmsdkobf/cc;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cc;->setType(I)V

    .line 143
    iget v0, p0, Ltmsdkobf/cc;->im:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cc;->ag(I)V

    .line 145
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 36
    iput-object p1, p0, Ltmsdkobf/cc;->title:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 56
    iput p1, p0, Ltmsdkobf/cc;->type:I

    .line 57
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 128
    iget-object v0, p0, Ltmsdkobf/cc;->title:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Ltmsdkobf/cc;->il:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 130
    iget v0, p0, Ltmsdkobf/cc;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 131
    iget v0, p0, Ltmsdkobf/cc;->im:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 132
    return-void
.end method
