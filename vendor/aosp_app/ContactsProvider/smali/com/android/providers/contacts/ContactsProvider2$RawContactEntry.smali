.class public Lcom/android/providers/contacts/ContactsProvider2$RawContactEntry;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawContactEntry"
.end annotation


# instance fields
.field contactId:J

.field rawContactId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 9310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9311
    iput-wide p1, p0, Lcom/android/providers/contacts/ContactsProvider2$RawContactEntry;->rawContactId:J

    .line 9312
    iput-wide p3, p0, Lcom/android/providers/contacts/ContactsProvider2$RawContactEntry;->contactId:J

    .line 9313
    return-void
.end method
