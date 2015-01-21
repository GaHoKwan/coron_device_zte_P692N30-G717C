.class public Lcom/android/contacts/ext/ContactPluginDefault;
.super Ljava/lang/Object;
.source "ContactPluginDefault.java"

# interfaces
.implements Lcom/android/contacts/ext/IContactPlugin;


# static fields
.field public static final COMMD_FOR_AAS:Ljava/lang/String; = "ExtensionForAAS"

.field public static final COMMD_FOR_AppGuideExt:Ljava/lang/String; = "ExtensionForAppGuideExt"

.field public static final COMMD_FOR_OP01:Ljava/lang/String; = "ExtensionForOP01"

.field public static final COMMD_FOR_OP09:Ljava/lang/String; = "ExtensionForOP09"

.field public static final COMMD_FOR_RCS:Ljava/lang/String; = "ExtenstionForRCS"

.field public static final COMMD_FOR_SNE:Ljava/lang/String; = "ExtensionForSNE"

.field public static final COMMD_FOR_SNS:Ljava/lang/String; = "ExtensionForSNS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/android/contacts/ext/CallDetailExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/CallDetailExtension;-><init>()V

    return-object v0
.end method

.method public createCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;-><init>()V

    return-object v0
.end method

.method public createCallListExtension()Lcom/android/contacts/ext/CallListExtension;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/android/contacts/ext/CallListExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/CallListExtension;-><init>()V

    return-object v0
.end method

.method public createCallLogAdapterExtension()Lcom/android/contacts/ext/CallLogAdapterExtension;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/android/contacts/ext/CallLogAdapterExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/CallLogAdapterExtension;-><init>()V

    return-object v0
.end method

.method public createCallLogSearchResultActivityExtension()Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/CallLogSearchResultActivityExtension;-><init>()V

    return-object v0
.end method

.method public createCallLogSimInfoHelperExtension()Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;-><init>()V

    return-object v0
.end method

.method public createContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/android/contacts/ext/ContactAccountExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/ContactAccountExtension;-><init>()V

    return-object v0
.end method

.method public createContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;-><init>()V

    return-object v0
.end method

.method public createContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/android/contacts/ext/ContactDetailExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/ContactDetailExtension;-><init>()V

    return-object v0
.end method

.method public createContactListExtension()Lcom/android/contacts/ext/ContactListExtension;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/android/contacts/ext/ContactListExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/ContactListExtension;-><init>()V

    return-object v0
.end method

.method public createContactsCallOptionHandlerExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/ContactsCallOptionHandlerExtension;-><init>()V

    return-object v0
.end method

.method public createContactsCallOptionHandlerFactoryExtension()Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/ContactsCallOptionHandlerFactoryExtension;-><init>()V

    return-object v0
.end method

.method public createDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/contacts/ext/DialPadExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/DialPadExtension;-><init>()V

    return-object v0
.end method

.method public createDialerSearchAdapterExtension()Lcom/android/contacts/ext/DialerSearchAdapterExtension;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/contacts/ext/DialerSearchAdapterExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/DialerSearchAdapterExtension;-><init>()V

    return-object v0
.end method

.method public createDialtactsExtension()Lcom/android/contacts/ext/DialtactsExtension;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/android/contacts/ext/DialtactsExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/DialtactsExtension;-><init>()V

    return-object v0
.end method

.method public createIccCardExtension()Lcom/android/contacts/ext/IccCardExtension;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/android/contacts/ext/IccCardExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/IccCardExtension;-><init>()V

    return-object v0
.end method

.method public createImportExportEnhancementExtension()Lcom/android/contacts/ext/ImportExportEnhancementExtension;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/android/contacts/ext/ImportExportEnhancementExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/ImportExportEnhancementExtension;-><init>()V

    return-object v0
.end method

.method public createQuickContactExtension()Lcom/android/contacts/ext/QuickContactExtension;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/contacts/ext/QuickContactExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/QuickContactExtension;-><init>()V

    return-object v0
.end method

.method public createSimPickExtension()Lcom/android/contacts/ext/SimPickExtension;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/contacts/ext/SimPickExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/SimPickExtension;-><init>()V

    return-object v0
.end method

.method public createSimServiceExtension()Lcom/android/contacts/ext/SimServiceExtension;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/android/contacts/ext/SimServiceExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/SimServiceExtension;-><init>()V

    return-object v0
.end method

.method public createSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/contacts/ext/SpeedDialExtension;

    invoke-direct {v0}, Lcom/android/contacts/ext/SpeedDialExtension;-><init>()V

    return-object v0
.end method
