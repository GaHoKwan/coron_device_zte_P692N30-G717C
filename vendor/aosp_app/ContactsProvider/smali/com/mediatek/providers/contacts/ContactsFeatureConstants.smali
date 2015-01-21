.class public Lcom/mediatek/providers/contacts/ContactsFeatureConstants;
.super Ljava/lang/Object;
.source "ContactsFeatureConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/providers/contacts/ContactsFeatureConstants$FeatureOption;
    }
.end annotation


# static fields
.field public static DBG_DIALER_SEARCH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/providers/contacts/ContactsFeatureConstants;->DBG_DIALER_SEARCH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method
