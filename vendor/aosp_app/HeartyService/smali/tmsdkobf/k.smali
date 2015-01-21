.class public final Ltmsdkobf/k;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public af:J

.field public ag:Ljava/lang/String;

.field public state:I

.field public weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/k;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdkobf/k;->af:J

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/k;->weight:F

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/k;->ag:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/k;->state:I

    .line 71
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 113
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 115
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 117
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/k;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 83
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 88
    check-cast v0, Ltmsdkobf/k;

    .line 89
    .local v0, t:Ltmsdkobf/k;
    iget-wide v2, p0, Ltmsdkobf/k;->af:J

    iget-wide v4, v0, Ltmsdkobf/k;->af:J

    invoke-static {v2, v3, v4, v5}, Ltmsdkobf/dg;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/k;->weight:F

    iget v3, v0, Ltmsdkobf/k;->weight:F

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/k;->ag:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/k;->ag:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/k;->state:I

    iget v3, v0, Ltmsdkobf/k;->state:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    iget-wide v0, p0, Ltmsdkobf/k;->af:J

    invoke-virtual {p1, v0, v1, v3, v2}, Ltmsdkobf/dd;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/k;->af:J

    .line 134
    iget v0, p0, Ltmsdkobf/k;->weight:F

    invoke-virtual {p1, v0, v2, v2}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v0

    iput v0, p0, Ltmsdkobf/k;->weight:F

    .line 135
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/k;->ag:Ljava/lang/String;

    .line 136
    iget v0, p0, Ltmsdkobf/k;->state:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/k;->state:I

    .line 137
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 3
    .parameter "_os"

    .prologue
    .line 124
    iget-wide v0, p0, Ltmsdkobf/k;->af:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(JI)V

    .line 125
    iget v0, p0, Ltmsdkobf/k;->weight:F

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(FI)V

    .line 126
    iget-object v0, p0, Ltmsdkobf/k;->ag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 127
    iget v0, p0, Ltmsdkobf/k;->state:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 128
    return-void
.end method
