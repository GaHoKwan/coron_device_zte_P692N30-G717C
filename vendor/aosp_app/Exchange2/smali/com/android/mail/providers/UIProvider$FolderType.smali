.class public final Lcom/android/mail/providers/UIProvider$FolderType;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FolderType"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DRAFT:I = 0x2

.field public static final INBOX:I = 0x1

.field public static final OUTBOX:I = 0x3

.field public static final SENT:I = 0x4

.field public static final SPAM:I = 0x6

.field public static final STARRED:I = 0x7

.field public static final TRASH:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
