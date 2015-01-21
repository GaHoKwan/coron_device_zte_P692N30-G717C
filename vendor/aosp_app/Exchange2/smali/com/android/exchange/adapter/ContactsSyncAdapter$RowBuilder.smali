.class Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowBuilder"
.end annotation


# instance fields
.field builder:Landroid/content/ContentProviderOperation$Builder;

.field cv:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 0
    .parameter
    .parameter "_builder"

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    iput-object p2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 1028
    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V
    .locals 1
    .parameter
    .parameter "_builder"
    .parameter "_ncv"

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput-object p2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 1032
    iget-object v0, p3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1033
    return-void
.end method


# virtual methods
.method build()Landroid/content/ContentProviderOperation;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1051
    return-object p0
.end method

.method withValueBackReference(Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 1
    .parameter "key"
    .parameter "previousResult"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1042
    return-object p0
.end method

.method withValues(Landroid/content/ContentValues;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 1
    .parameter "values"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1037
    return-object p0
.end method
