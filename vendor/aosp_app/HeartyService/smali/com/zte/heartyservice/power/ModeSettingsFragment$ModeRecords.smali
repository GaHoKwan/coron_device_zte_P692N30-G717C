.class public Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;
.super Ljava/lang/Object;
.source "ModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/ModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeRecords"
.end annotation


# instance fields
.field public modeName:Ljava/lang/String;

.field public modeSummary:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "summary"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;->modeName:Ljava/lang/String;

    .line 531
    iput-object p3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;->modeSummary:Ljava/lang/String;

    .line 532
    return-void
.end method
