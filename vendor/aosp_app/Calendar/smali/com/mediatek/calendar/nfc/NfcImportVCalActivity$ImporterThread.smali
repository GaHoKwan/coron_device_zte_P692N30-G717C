.class Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;
.super Ljava/lang/Thread;
.source "NfcImportVCalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImporterThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

.field private mParser:Lcom/mediatek/vcalendar/VCalParser;

.field private mVcsContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 0
    .parameter "context"
    .parameter "vcsContent"
    .parameter "listener"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;->mVcsContent:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    .line 93
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    const-string v0, "NfcImportVCalActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startParseVcsContent... ... mVcsContent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;->mVcsContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Lcom/mediatek/vcalendar/VCalParser;

    iget-object v1, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;->mVcsContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;->mListener:Lcom/mediatek/vcalendar/VCalStatusChangeOperator;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/vcalendar/VCalParser;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    iput-object v0, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    .line 99
    iget-object v0, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalParser;->startParseVcsContent()V

    .line 100
    return-void
.end method
