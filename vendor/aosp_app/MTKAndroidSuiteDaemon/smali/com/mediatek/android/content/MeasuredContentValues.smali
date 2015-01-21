.class public Lcom/mediatek/android/content/MeasuredContentValues;
.super Ljava/lang/Object;
.source "MeasuredContentValues.java"


# instance fields
.field private final mContentValues:Landroid/content/ContentValues;

.field private mParcelSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initSize"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    .line 63
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 173
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    .line 174
    return-void
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public measure()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    return v0
.end method

.method public measureValue(Ljava/lang/Integer;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    const/4 v0, 0x4

    .line 142
    .local v0, result:I
    :goto_0
    return v0

    .line 140
    .end local v0           #result:I
    :cond_0
    const/16 v0, 0x8

    .restart local v0       #result:I
    goto :goto_0
.end method

.method public measureValue(Ljava/lang/Long;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const/4 v0, 0x4

    .line 163
    .local v0, result:I
    :goto_0
    return v0

    .line 161
    .end local v0           #result:I
    :cond_0
    const/16 v0, 0xc

    .restart local v0       #result:I
    goto :goto_0
.end method

.method public measureValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x4

    .line 99
    .local v0, result:I
    :goto_0
    return v0

    .line 97
    .end local v0           #result:I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v0, v1, 0x4

    .restart local v0       #result:I
    goto :goto_0
.end method

.method public measureValue([B)I
    .locals 2
    .parameter "value"

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const/4 v0, 0x4

    .line 121
    .local v0, result:I
    :goto_0
    return v0

    .line 119
    .end local v0           #result:I
    :cond_0
    array-length v1, p1

    add-int/lit8 v0, v1, 0x8

    .restart local v0       #result:I
    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    invoke-virtual {p0, p1}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue(Ljava/lang/Integer;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    invoke-virtual {p0, p1}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue(Ljava/lang/Long;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, old:Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    invoke-virtual {p0, p2}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    .line 218
    .end local v0           #old:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void

    .line 215
    :cond_0
    iget v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    invoke-virtual {p0, p1}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    goto :goto_0
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 230
    .local v0, old:[B
    iget v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    invoke-virtual {p0, p2}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue([B)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue([B)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    .line 235
    .end local v0           #old:[B
    :goto_0
    iget-object v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 236
    return-void

    .line 232
    :cond_0
    iget v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    invoke-virtual {p0, p1}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/mediatek/android/content/MeasuredContentValues;->measureValue([B)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/android/content/MeasuredContentValues;->mParcelSize:I

    goto :goto_0
.end method
