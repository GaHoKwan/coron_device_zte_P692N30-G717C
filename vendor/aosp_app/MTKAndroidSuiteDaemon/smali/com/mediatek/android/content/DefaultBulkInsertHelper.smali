.class public abstract Lcom/mediatek/android/content/DefaultBulkInsertHelper;
.super Ljava/lang/Object;
.source "DefaultBulkInsertHelper.java"


# static fields
.field public static final DEFAULT_BULK_LIMIT:I = 0x1f3

.field public static final MAX_PARCEL_SIZE:I = 0xf4240

.field public static final SC_APPENDED:I = 0x100001

.field public static final SC_BUFFER_EMPTY:I = 0x1000001

.field public static final SC_EXECUTED:I = 0x10000001

.field public static final SC_FAILED:I = 0x0

.field public static final SC_OK:I = 0x1

.field public static final SC_SINGLE_VALUE_EXCEED:I = 0x100000


# instance fields
.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mBulkLimit:I

.field private mParcelSize:I

.field private mStatusCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0x1f3

    iput v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBulkLimit:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBulkLimit:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBuffer:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mParcelSize:I

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "bulkLimit"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBulkLimit:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBulkLimit:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBuffer:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mParcelSize:I

    .line 82
    return-void
.end method


# virtual methods
.method public append(Lcom/mediatek/android/content/MeasuredContentValues;)Z
    .locals 6
    .parameter "measuredValues"

    .prologue
    const v5, 0x100001

    const v4, 0xf4240

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-nez p1, :cond_0

    .line 103
    iput v5, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mStatusCode:I

    .line 127
    :goto_0
    return v0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/android/content/MeasuredContentValues;->measure()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 108
    const/high16 v0, 0x10

    iput v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mStatusCode:I

    move v0, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    iget v2, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mParcelSize:I

    invoke-virtual {p1}, Lcom/mediatek/android/content/MeasuredContentValues;->measure()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v4, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBulkLimit:I

    if-lt v2, v3, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 121
    goto :goto_0

    .line 124
    :cond_3
    iget v1, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mParcelSize:I

    invoke-virtual {p1}, Lcom/mediatek/android/content/MeasuredContentValues;->measure()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mParcelSize:I

    .line 125
    iget-object v1, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mediatek/android/content/MeasuredContentValues;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iput v5, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mStatusCode:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mParcelSize:I

    .line 142
    iget-object v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    return-void
.end method

.method public execute()Z
    .locals 3

    .prologue
    .line 150
    iget-object v2, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/ContentValues;

    .line 152
    .local v1, values:[Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->clear()V

    .line 156
    invoke-virtual {p0, v1}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->onExecute([Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const v2, 0x10000001

    iput v2, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mStatusCode:I

    .line 158
    const/4 v0, 0x1

    .line 167
    .end local v1           #values:[Landroid/content/ContentValues;
    .local v0, result:Z
    :goto_0
    return v0

    .line 160
    .end local v0           #result:Z
    .restart local v1       #values:[Landroid/content/ContentValues;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mStatusCode:I

    .line 161
    const/4 v0, 0x0

    .restart local v0       #result:Z
    goto :goto_0

    .line 164
    .end local v0           #result:Z
    .end local v1           #values:[Landroid/content/ContentValues;
    :cond_1
    const v2, 0x1000001

    iput v2, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mStatusCode:I

    .line 165
    const/4 v0, 0x1

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mStatusCode:I

    return v0
.end method

.method public isStatusOK()Z
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mStatusCode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onExecute([Landroid/content/ContentValues;)Z
.end method

.method public size()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
