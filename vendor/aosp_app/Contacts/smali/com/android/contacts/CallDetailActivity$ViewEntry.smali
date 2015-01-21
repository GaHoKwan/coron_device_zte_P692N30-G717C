.class final Lcom/android/contacts/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public fourthDescription:Ljava/lang/String;

.field public fourthIntent:Landroid/content/Intent;

.field public geocode:Ljava/lang/CharSequence;

.field public ipText:Ljava/lang/String;

.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;

.field public thirdDescription:Ljava/lang/String;

.field public thirdIntent:Landroid/content/Intent;

.field public videoText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "intent"
    .parameter "description"

    .prologue
    const/4 v1, 0x0

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 954
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 956
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 958
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 961
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    .line 962
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 963
    iput-object p3, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 964
    return-void
.end method


# virtual methods
.method public setFourthAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "text"
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->ipText:Ljava/lang/String;

    .line 1000
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->fourthIntent:Landroid/content/Intent;

    .line 1001
    iput-object p3, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->fourthDescription:Ljava/lang/String;

    .line 1002
    return-void
.end method

.method public setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "icon"
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 967
    iput p1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 968
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 969
    iput-object p3, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 970
    return-void
.end method

.method public setThirdAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "text"
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->videoText:Ljava/lang/String;

    .line 991
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 992
    iput-object p3, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->thirdDescription:Ljava/lang/String;

    .line 993
    return-void
.end method
