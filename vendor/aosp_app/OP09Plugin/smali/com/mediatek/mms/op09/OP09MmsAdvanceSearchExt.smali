.class public Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;
.super Lcom/mediatek/mms/ext/MmsAdvanceSearchImpl;
.source "OP09MmsAdvanceSearchExt.java"


# static fields
.field private static final ADVANCE_URI:Ljava/lang/String; = "content://mms-sms/searchAdvanced"

.field private static final TAG:Ljava/lang/String; = "Mms/OP09MmsAdvanceSearchExt"


# instance fields
.field private mBeginDate:J

.field private mContent:Ljava/lang/String;

.field private mEndDate:J

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsAdvanceSearchImpl;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method


# virtual methods
.method public buildAdvanceSearchUri()Landroid/net/Uri;
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 68
    const-string v1, "content://mms-sms/searchAdvanced"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 69
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const-string v1, "content"

    iget-object v2, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    const-string v1, "name"

    iget-object v2, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    const-string v1, "number"

    iget-object v2, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 78
    :cond_2
    iget-wide v1, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mBeginDate:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_3

    .line 79
    const-string v1, "begin_date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mBeginDate:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    :cond_3
    iget-wide v1, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mEndDate:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    .line 82
    const-string v1, "end_date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mEndDate:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 84
    :cond_4
    const-string v1, "Mms/OP09MmsAdvanceSearchExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildAdvanceSearchUri: uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public initAdvancedData(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const-wide/16 v2, 0x0

    .line 90
    const-string v0, "Mms/OP09MmsAdvanceSearchExt"

    const-string v1, "initAdvancedData"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mContent:Ljava/lang/String;

    .line 92
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mName:Ljava/lang/String;

    .line 93
    const-string v0, "number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mNumber:Ljava/lang/String;

    .line 94
    const-string v0, "begin_date"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mBeginDate:J

    .line 95
    const-string v0, "end_date"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/mms/op09/OP09MmsAdvanceSearchExt;->mEndDate:J

    .line 96
    return-void
.end method
