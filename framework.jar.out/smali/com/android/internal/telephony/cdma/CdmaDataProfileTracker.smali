.class public final Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;
.super Landroid/os/Handler;
.source "CdmaDataProfileTracker.java"


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final DBG:Z = true

.field private static final EVENT_APN_CHANGED:I = 0xa

.field private static final EVENT_GET_DATA_CALL_PROFILE_DONE:I = 0x1

.field private static final EVENT_LOAD_PROFILES:I = 0x2

.field private static final EVENT_READ_MODEM_PROFILES:I

.field private static final PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

.field private static final mDefaultApnTypes:[Ljava/lang/String;

.field private static final mSupportedApnTypes:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private canSetPreferApn:Z

.field protected mActiveDp:Lcom/android/internal/telephony/DataProfile;

.field private mAllApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOmhEnabled:Z

.field private mModemDataProfileRegistrants:Landroid/os/RegistrantList;

.field mOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mOmhReadProfileContext:I

.field private mOmhReadProfileCount:I

.field mOmhServicePriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mPreferredApn:Lcom/android/internal/telephony/DataProfile;

.field private mPreferredDataProfile:Lcom/android/internal/telephony/DataProfile;

.field mTempOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mms"

    aput-object v1, v0, v4

    const-string/jumbo v1, "supl"

    aput-object v1, v0, v5

    const-string v1, "dun"

    aput-object v1, v0, v6

    const-string v1, "hipri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "fota"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ims"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cbs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mms"

    aput-object v1, v0, v4

    const-string/jumbo v1, "supl"

    aput-object v1, v0, v5

    const-string v1, "hipri"

    aput-object v1, v0, v6

    const-string v1, "fota"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ims"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cbs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDefaultApnTypes:[Ljava/lang/String;

    .line 146
    const-string v0, "content://telephony/carriers/preferapn_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    const-string v0, "CDMA"

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->LOG_TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mAllApns:Ljava/util/ArrayList;

    .line 116
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    .line 121
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 123
    const-string/jumbo v0, "persist.omh.enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    .line 149
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->canSetPreferApn:Z

    .line 151
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 157
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUPPORT_OMH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private addServiceTypeToUnSpecified()V
    .locals 8

    .prologue
    .line 650
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 651
    .local v0, apntype:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 656
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataProfile;

    .local v2, dp:Lcom/android/internal/telephony/DataProfile;
    move-object v6, v2

    .line 657
    check-cast v6, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getDataProfileTypeModem()Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    if-ne v6, v7, :cond_0

    .line 659
    check-cast v2, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    .end local v2           #dp:Lcom/android/internal/telephony/DataProfile;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;)V

    .line 661
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Service Type added to UNSPECIFIED is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 650
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 668
    .end local v0           #apntype:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private createAllApnList()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, operator:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 264
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->populateApnDataProfilesList(Landroid/database/Cursor;)V

    .line 266
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 270
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->setActiveDpToDefault()V

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 294
    return-void

    .line 273
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getPreferredApn()Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredDataProfile:Lcom/android/internal/telephony/DataProfile;

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfile;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 276
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    .line 277
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->setPreferredApn(I)V

    .line 279
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createDefaultDataProfiles()V
    .locals 14

    .prologue
    const/4 v6, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 302
    const-string v1, "Creating default profiles..."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 303
    const-string/jumbo v1, "persist.telephony.cdma.protocol"

    const-string v3, "IP"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, ipProto:Ljava/lang/String;
    const-string/jumbo v1, "persist.telephony.cdma.rproto"

    const-string v3, "IP"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 307
    .local v9, roamingIpProto:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object v11, v1

    check-cast v11, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    .line 311
    .local v11, cdmaDct:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
    new-instance v0, Lcom/android/internal/telephony/cdma/DataProfileCdma;

    const-string v1, "default"

    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDefaultApnTypes:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/cdma/DataProfileCdma;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    .local v0, dp:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/cdma/DataProfileCdma;->setProfileId(I)V

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-array v7, v13, [Ljava/lang/String;

    const-string v1, "dun"

    aput-object v1, v7, v12

    .line 321
    .local v7, types:[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/cdma/DataProfileCdma;

    .end local v0           #dp:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    const-string v1, "dun"

    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/cdma/DataProfileCdma;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 326
    .restart local v0       #dp:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/DataProfileCdma;->setProfileId(I)V

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method private getDuplicateProfile(Lcom/android/internal/telephony/DataProfile;)Lcom/android/internal/telephony/cdma/DataProfileOmh;
    .locals 4
    .parameter "dp"

    .prologue
    .line 615
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .local v0, dataProfile:Lcom/android/internal/telephony/DataProfile;
    move-object v2, p1

    .line 616
    check-cast v2, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getProfileId()I

    move-result v3

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getProfileId()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 618
    check-cast v0, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    .line 621
    .end local v0           #dataProfile:Lcom/android/internal/telephony/DataProfile;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    .line 338
    .local v0, cdmaDct:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 340
    sget-object v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "operatorNumeric for NV "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 348
    :goto_0
    return-object v1

    .line 342
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "operatorNumeric for icc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_1
    const-string v2, "IccRecords == null -> operatorNumeric = null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/DataProfile;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-object v3

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string/jumbo v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string/jumbo v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 221
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->canSetPreferApn:Z

    .line 226
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 229
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 230
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataProfile;

    .line 231
    .local v8, p:Lcom/android/internal/telephony/DataProfile;
    iget v0, v8, Lcom/android/internal/telephony/DataProfile;->id:I

    if-ne v0, v9, :cond_2

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 233
    goto :goto_0

    .line 223
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/DataProfile;
    .end local v9           #pos:I
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->canSetPreferApn:Z

    goto :goto_1

    .line 238
    :cond_4
    if-eqz v6, :cond_0

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private omhListGetArbitratedPriority(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter "serviceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v2, 0x0

    .line 679
    .local v2, profile:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    move-object v3, v0

    .line 680
    check-cast v3, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->isValidPriority()Z

    move-result v3

    if-nez v3, :cond_0

    .line 681
    const-string v3, "[OMH] Invalid priority... skipping"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_0
    if-nez v2, :cond_1

    .line 686
    move-object v2, v0

    goto :goto_0

    .line 688
    :cond_1
    const-string/jumbo v3, "supl"

    if-ne p2, v3, :cond_3

    move-object v3, v0

    .line 690
    check-cast v3, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->isPriorityLower(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    :cond_2
    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 694
    check-cast v3, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->isPriorityHigher(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, v0

    :cond_4
    goto :goto_0

    .line 699
    .end local v0           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_5
    check-cast v2, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    .end local v2           #profile:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getPriority()I

    move-result v3

    return v3
.end method

.method private onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V
    .locals 8
    .parameter "ar"
    .parameter "context"

    .prologue
    .line 539
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    if-eq p2, v6, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v3, 0x0

    .line 549
    .local v3, modemProfile:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 550
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Exception in onGetDataCallProfileDone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 551
    const/4 v0, 0x0

    .line 552
    const/4 v3, 0x0

    .line 557
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 559
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 563
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    .line 565
    .local v5, serviceType:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: # profiles returned from modem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 568
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->omhListGetArbitratedPriority(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataProfile;

    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    move-object v6, v1

    .line 574
    check-cast v6, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->setDataProfileTypeModem(Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;)V

    .line 580
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getDuplicateProfile(Lcom/android/internal/telephony/DataProfile;)Lcom/android/internal/telephony/cdma/DataProfileOmh;

    move-result-object v4

    .line 581
    .local v4, omhDuplicatedp:Lcom/android/internal/telephony/cdma/DataProfileOmh;
    if-nez v4, :cond_3

    .line 582
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    check-cast v1, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    .end local v1           #dp:Lcom/android/internal/telephony/DataProfile;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_2

    .line 554
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #omhDuplicatedp:Lcom/android/internal/telephony/cdma/DataProfileOmh;
    .end local v5           #serviceType:Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0           #dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 555
    .restart local v0       #dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v3           #modemProfile:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    check-cast v3, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    .restart local v3       #modemProfile:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    goto :goto_1

    .line 592
    .restart local v1       #dp:Lcom/android/internal/telephony/DataProfile;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #omhDuplicatedp:Lcom/android/internal/telephony/cdma/DataProfileOmh;
    .restart local v5       #serviceType:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Duplicate Profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 593
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_2

    .line 600
    .end local v1           #dp:Lcom/android/internal/telephony/DataProfile;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #omhDuplicatedp:Lcom/android/internal/telephony/cdma/DataProfileOmh;
    .end local v5           #serviceType:Ljava/lang/String;
    :cond_4
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    if-nez v6, :cond_0

    .line 601
    const-string v6, "OMH: Modem omh profile read complete."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 602
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->addServiceTypeToUnSpecified()V

    .line 603
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 604
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0
.end method

.method private onReadDataProfilesFromModem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 511
    const-string v4, "OMH: onReadDataProfilesFromModem()"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 512
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    .line 514
    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 516
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 517
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 518
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 521
    invoke-static {}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->values()[Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 522
    .local v3, p:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMH: Reading profiles for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 523
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 524
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallProfile(ILandroid/os/Message;)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    .end local v3           #p:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    :cond_0
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 448
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 450
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 454
    :goto_0
    return-object v0

    .line 452
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private populateApnDataProfilesList(Landroid/database/Cursor;)V
    .locals 20
    .parameter "cursor"

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 405
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    :cond_0
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 409
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string/jumbo v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    :goto_0
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 435
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 439
    .end local v2           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_1
    return-void

    .line 409
    .restart local v15       #types:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto :goto_0
.end method

.method private populateDataProfilesList(Landroid/database/Cursor;)V
    .locals 11
    .parameter "cursor"

    .prologue
    .line 381
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    const-string/jumbo v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 385
    .local v7, types:[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/cdma/DataProfileCdma;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v2, "numeric"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "apn"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "authtype"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v8, "protocol"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "roaming_protocol"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "bearer"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/cdma/DataProfileCdma;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 397
    .local v0, nai:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    .end local v0           #nai:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    .end local v7           #types:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private readDataProfilesFromModem()V
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    const-string v0, "OMH is disabled, ignoring request!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readNaiListFromDatabase()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 356
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, operator:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 358
    :cond_0
    const-string/jumbo v0, "operatorNumeric invalid. Won\'t read database"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->loge(Ljava/lang/String;)V

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading data profiles for operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and profile_type = \'nai\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readNaiListFromDatabase: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 372
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 373
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 374
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->populateDataProfilesList(Landroid/database/Cursor;)V

    .line 376
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private setActiveDpToDefault()V
    .locals 1

    .prologue
    .line 331
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getDataProfile(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    .line 332
    return-void
.end method


# virtual methods
.method public clearActiveDataProfile()V
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    .line 704
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 458
    const-string v0, "CDMA"

    const-string v1, "CdmaDataProfileTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method protected getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getServiceTypes()[Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 728
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 729
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getDataProfile(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfile;
    .locals 5
    .parameter "serviceType"

    .prologue
    .line 625
    const/4 v2, 0x0

    .line 627
    .local v2, profile:Lcom/android/internal/telephony/DataProfile;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredDataProfile:Lcom/android/internal/telephony/DataProfile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredDataProfile:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPreferredDataProfile:Lcom/android/internal/telephony/DataProfile;

    .line 643
    :goto_0
    return-object v3

    .line 632
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .line 633
    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 634
    move-object v2, v0

    .line 635
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v3, v4, :cond_1

    .end local v0           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_2
    move-object v3, v2

    .line 643
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 473
    const-string v0, "CDMA"

    const-string v1, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_0
    return-void

    .line 477
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 491
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 479
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->loadProfiles()V

    goto :goto_0

    .line 482
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->onReadDataProfilesFromModem()V

    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 715
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 716
    .local v3, s:Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 717
    const/4 v4, 0x1

    .line 720
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 715
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isOmhEnabled()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    return v0
.end method

.method loadProfiles()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "loadProfiles..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->createAllApnList()V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " profiles from database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->createDefaultDataProfiles()V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->setActiveDpToDefault()V

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->readDataProfilesFromModem()V

    .line 193
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 735
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataProfileTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 739
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataProfileTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return-void
.end method

.method public registerForModemProfileReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 462
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 463
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 464
    return-void
.end method

.method setPreferredApn(I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->canSetPreferApn:Z

    if-nez v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    if-ltz p1, :cond_0

    .line 204
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public unregisterForModemProfileReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 468
    return-void
.end method
