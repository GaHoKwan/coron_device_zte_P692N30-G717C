.class public Lcom/mediatek/contacts/quickcontact/QuickDataAction;
.super Lcom/android/contacts/quickcontact/DataAction;
.source "QuickDataAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickDataAction"


# instance fields
.field private mSimId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Z)V
    .locals 3
    .parameter "context"
    .parameter "item"
    .parameter "isDirectoryEntry"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/contacts/quickcontact/QuickDataAction;->mSimId:I

    .line 17
    if-eqz p3, :cond_0

    .line 18
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "sim_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/quickcontact/QuickDataAction;->mSimId:I

    .line 20
    :cond_0
    const-string v0, "QuickDataAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/quickcontact/QuickDataAction;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isDirectoryEntry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method


# virtual methods
.method public getSimId()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/mediatek/contacts/quickcontact/QuickDataAction;->mSimId:I

    return v0
.end method
