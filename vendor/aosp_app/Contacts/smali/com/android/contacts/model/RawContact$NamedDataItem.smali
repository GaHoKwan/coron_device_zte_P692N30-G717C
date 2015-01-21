.class public Lcom/android/contacts/model/RawContact$NamedDataItem;
.super Ljava/lang/Object;
.source "RawContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/RawContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedDataItem"
.end annotation


# instance fields
.field public final dataItem:Lcom/android/contacts/model/dataitem/DataItem;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/contacts/model/dataitem/DataItem;)V
    .locals 0
    .parameter "uri"
    .parameter "dataItem"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/contacts/model/RawContact$NamedDataItem;->uri:Landroid/net/Uri;

    .line 58
    iput-object p2, p0, Lcom/android/contacts/model/RawContact$NamedDataItem;->dataItem:Lcom/android/contacts/model/dataitem/DataItem;

    .line 59
    return-void
.end method
