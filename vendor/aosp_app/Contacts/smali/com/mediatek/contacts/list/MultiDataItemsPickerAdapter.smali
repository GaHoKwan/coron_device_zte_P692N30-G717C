.class public Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;
.super Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;
.source "MultiDataItemsPickerAdapter.java"


# static fields
.field public static final DATA_OTHERS_FILTER_URI:Landroid/net/Uri;

.field public static final DATA_OTHERS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMimeType:Ljava/lang/String;

.field private mRestrictPhoneIds:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "content://com.android.contacts/data/others"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->DATA_OTHERS_URI:Landroid/net/Uri;

    .line 30
    sget-object v0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->DATA_OTHERS_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->DATA_OTHERS_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 0
    .parameter "context"
    .parameter "lv"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 35
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method protected configLoaderUri(J)Landroid/net/Uri;
    .locals 8
    .parameter "directoryId"

    .prologue
    const-wide/16 v6, 0x0

    .line 42
    cmp-long v3, p1, v6

    if-eqz v3, :cond_0

    .line 43
    sget-object v3, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiDataItemsPickerAdapter is not ready for non-default directory ID (directoryId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, query:Ljava/lang/String;
    sget-object v3, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->DATA_OTHERS_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 50
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "specified_data_mime_type"

    iget-object v4, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    :goto_0
    const-string v3, "directory"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    const-string v3, "checked_ids_arg"

    sget-object v4, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->DATA_OTHERS_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 71
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #query:Ljava/lang/String;
    .local v2, uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    sget-object v3, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v2

    .line 54
    .end local v2           #uri:Landroid/net/Uri;
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    .restart local v1       #query:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 62
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #query:Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->DATA_OTHERS_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "specified_data_mime_type"

    iget-object v5, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "checked_ids_arg"

    sget-object v5, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->DATA_OTHERS_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 66
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    invoke-static {v2}, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 8
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v5, selection:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->mRestrictPhoneIds:[J

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->mRestrictPhoneIds:[J

    array-length v6, v6

    if-lez v6, :cond_1

    .line 82
    const-string v6, "( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->mRestrictPhoneIds:[J

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 85
    .local v2, id:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v2           #id:J
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v6, ") )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .end local v0           #arr$:[J
    .end local v1           #i$:I
    .end local v4           #len$:I
    :goto_1
    invoke-virtual {p1}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 94
    sget-object v6, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 90
    :cond_1
    const-string v6, "(0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public setMimetype(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->mMimeType:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setRestrictList([J)V
    .locals 0
    .parameter "phoneIds"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiDataItemsPickerAdapter;->mRestrictPhoneIds:[J

    .line 99
    return-void
.end method
