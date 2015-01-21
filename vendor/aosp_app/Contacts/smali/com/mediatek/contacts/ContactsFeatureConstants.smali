.class public Lcom/mediatek/contacts/ContactsFeatureConstants;
.super Ljava/lang/Object;
.source "ContactsFeatureConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ContactsFeatureConstants$FeatureOption;
    }
.end annotation


# static fields
.field public static DBG_CONTACTS_GROUP:Z

.field public static DBG_DIALER_SEARCH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lcom/mediatek/contacts/ContactsFeatureConstants;->DBG_DIALER_SEARCH:Z

    .line 29
    sput-boolean v0, Lcom/mediatek/contacts/ContactsFeatureConstants;->DBG_CONTACTS_GROUP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static isSupportBtProfileBpp()Z
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "profile_supported_bpp"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
