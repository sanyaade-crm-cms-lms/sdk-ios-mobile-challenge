//
//  CapitalMarketsContentService.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CapitalMarketsContentService.h"
#import "CapitalMarketsContentService$AP$.h"
#import "CapitalMarketsTrading.h"

@interface CapitalMarketsContentService ()

@property (nonatomic, strong) CapitalMarketsContentService$AP$ * internal;

@end

@implementation CapitalMarketsContentService

#pragma mark - Data Source

+ (Class)dataSource {
    return [CapitalMarketsTrading class];
}

#pragma mark - Public

- (NSString *)id {
    return ThreadSafeReturn(^id{
        return self.internal.id;
    });
}

- (void)setId:(NSString *)id {
    ThreadSafe(^{
        self.internal.id = id;
    });
}

- (NSString *)alertDate {
    return ThreadSafeReturn(^id{
        return self.internal.alertDate;
    });
}

- (void)setAlertDate:(NSString *)alertDate {
    ThreadSafe(^{
        self.internal.alertDate = alertDate;
    });
}

- (NSArray *)allAttachments {
    return ThreadSafeReturn(^id{
        return self.internal.allAttachments;
    });
}

- (void)setAllAttachments:(NSArray *)allAttachments {
    ThreadSafe(^{
        self.internal.allAttachments = allAttachments;
    });
}

- (NSString *)analystId {
    return ThreadSafeReturn(^id{
        return self.internal.analystId;
    });
}

- (void)setAnalystId:(NSString *)analystId {
    ThreadSafe(^{
        self.internal.analystId = analystId;
    });
}

- (NSString *)analystType {
    return ThreadSafeReturn(^id{
        return self.internal.analystType;
    });
}

- (void)setAnalystType:(NSString *)analystType {
    ThreadSafe(^{
        self.internal.analystType = analystType;
    });
}

- (NSString *)assetClass {
    return ThreadSafeReturn(^id{
        return self.internal.assetClass;
    });
}

- (void)setAssetClass:(NSString *)assetClass {
    ThreadSafe(^{
        self.internal.assetClass = assetClass;
    });
}

- (NSNumber *)attachmentId {
    return ThreadSafeReturn(^id{
        return self.internal.attachmentId;
    });
}

- (void)setAttachmentId:(NSNumber *)attachmentId {
    ThreadSafe(^{
        self.internal.attachmentId = attachmentId;
    });
}

- (NSArray *)authorDetails {
    return ThreadSafeReturn(^id{
        return self.internal.authorDetails;
    });
}

- (void)setAuthorDetails:(NSArray *)authorDetails {
    ThreadSafe(^{
        self.internal.authorDetails = authorDetails;
    });
}

- (NSString *)authorId {
    return ThreadSafeReturn(^id{
        return self.internal.authorId;
    });
}

- (void)setAuthorId:(NSString *)authorId {
    ThreadSafe(^{
        self.internal.authorId = authorId;
    });
}

- (NSString *)authorName {
    return ThreadSafeReturn(^id{
        return self.internal.authorName;
    });
}

- (void)setAuthorName:(NSString *)authorName {
    ThreadSafe(^{
        self.internal.authorName = authorName;
    });
}

- (NSString *)authors {
    return ThreadSafeReturn(^id{
        return self.internal.authors;
    });
}

- (void)setAuthors:(NSString *)authors {
    ThreadSafe(^{
        self.internal.authors = authors;
    });
}

- (NSString *)company {
    return ThreadSafeReturn(^id{
        return self.internal.company;
    });
}

- (void)setCompany:(NSString *)company {
    ThreadSafe(^{
        self.internal.company = company;
    });
}

- (NSString *)contentServicesType {
    return ThreadSafeReturn(^id{
        return self.internal.contentServicesType;
    });
}

- (void)setContentServicesType:(NSString *)contentServicesType {
    ThreadSafe(^{
        self.internal.contentServicesType = contentServicesType;
    });
}

- (NSString *)contentType {
    return ThreadSafeReturn(^id{
        return self.internal.contentType;
    });
}

- (void)setContentType:(NSString *)contentType {
    ThreadSafe(^{
        self.internal.contentType = contentType;
    });
}

- (NSString *)contentUrl {
    return ThreadSafeReturn(^id{
        return self.internal.contentUrl;
    });
}

- (void)setContentUrl:(NSString *)contentUrl {
    ThreadSafe(^{
        self.internal.contentUrl = contentUrl;
    });
}

- (NSString *)dateString {
    return ThreadSafeReturn(^id{
        return self.internal.dateString;
    });
}

- (void)setDateString:(NSString *)dateString {
    ThreadSafe(^{
        self.internal.dateString = dateString;
    });
}

- (NSString *)documentUrl {
    return ThreadSafeReturn(^id{
        return self.internal.documentUrl;
    });
}

- (void)setDocumentUrl:(NSString *)documentUrl {
    ThreadSafe(^{
        self.internal.documentUrl = documentUrl;
    });
}

- (NSString *)encryptedId {
    return ThreadSafeReturn(^id{
        return self.internal.encryptedId;
    });
}

- (void)setEncryptedId:(NSString *)encryptedId {
    ThreadSafe(^{
        self.internal.encryptedId = encryptedId;
    });
}

- (NSString *)fileLink {
    return ThreadSafeReturn(^id{
        return self.internal.fileLink;
    });
}

- (void)setFileLink:(NSString *)fileLink {
    ThreadSafe(^{
        self.internal.fileLink = fileLink;
    });
}

- (NSString *)fileName {
    return ThreadSafeReturn(^id{
        return self.internal.fileName;
    });
}

- (void)setFileName:(NSString *)fileName {
    ThreadSafe(^{
        self.internal.fileName = fileName;
    });
}

- (NSString *)fileType {
    return ThreadSafeReturn(^id{
        return self.internal.fileType;
    });
}

- (void)setFileType:(NSString *)fileType {
    ThreadSafe(^{
        self.internal.fileType = fileType;
    });
}

- (NSString *)formatedPubDate {
    return ThreadSafeReturn(^id{
        return self.internal.formatedPubDate;
    });
}

- (void)setFormatedPubDate:(NSString *)formatedPubDate {
    ThreadSafe(^{
        self.internal.formatedPubDate = formatedPubDate;
    });
}

- (NSString *)formattedDateStr {
    return ThreadSafeReturn(^id{
        return self.internal.formattedDateStr;
    });
}

- (void)setFormattedDateStr:(NSString *)formattedDateStr {
    ThreadSafe(^{
        self.internal.formattedDateStr = formattedDateStr;
    });
}

- (NSString *)headline {
    return ThreadSafeReturn(^id{
        return self.internal.headline;
    });
}

- (void)setHeadline:(NSString *)headline {
    ThreadSafe(^{
        self.internal.headline = headline;
    });
}

- (NSNumber *)hitCount {
    return ThreadSafeReturn(^id{
        return self.internal.hitCount;
    });
}

- (void)setHitCount:(NSNumber *)hitCount {
    ThreadSafe(^{
        self.internal.hitCount = hitCount;
    });
}

- (NSString *)htmlEscapedTitle {
    return ThreadSafeReturn(^id{
        return self.internal.htmlEscapedTitle;
    });
}

- (void)setHtmlEscapedTitle:(NSString *)htmlEscapedTitle {
    ThreadSafe(^{
        self.internal.htmlEscapedTitle = htmlEscapedTitle;
    });
}

- (NSString *)image {
    return ThreadSafeReturn(^id{
        return self.internal.image;
    });
}

- (void)setImage:(NSString *)image {
    ThreadSafe(^{
        self.internal.image = image;
    });
}

- (NSArray *)imageGroup {
    return ThreadSafeReturn(^id{
        return self.internal.imageGroup;
    });
}

- (void)setImageGroup:(NSArray *)imageGroup {
    ThreadSafe(^{
        self.internal.imageGroup = imageGroup;
    });
}

- (NSString *)kv {
    return ThreadSafeReturn(^id{
        return self.internal.kv;
    });
}

- (void)setKv:(NSString *)kv {
    ThreadSafe(^{
        self.internal.kv = kv;
    });
}

- (NSString *)medialUrlIos {
    return ThreadSafeReturn(^id{
        return self.internal.medialUrlIos;
    });
}

- (void)setMedialUrlIos:(NSString *)medialUrlIos {
    ThreadSafe(^{
        self.internal.medialUrlIos = medialUrlIos;
    });
}

- (NSString *)mediaUrlAndroid {
    return ThreadSafeReturn(^id{
        return self.internal.mediaUrlAndroid;
    });
}

- (void)setMediaUrlAndroid:(NSString *)mediaUrlAndroid {
    ThreadSafe(^{
        self.internal.mediaUrlAndroid = mediaUrlAndroid;
    });
}

- (NSString *)menuCode {
    return ThreadSafeReturn(^id{
        return self.internal.menuCode;
    });
}

- (void)setMenuCode:(NSString *)menuCode {
    ThreadSafe(^{
        self.internal.menuCode = menuCode;
    });
}

- (NSString *)miliseconds {
    return ThreadSafeReturn(^id{
        return self.internal.miliseconds;
    });
}

- (void)setMiliseconds:(NSString *)miliseconds {
    ThreadSafe(^{
        self.internal.miliseconds = miliseconds;
    });
}

- (NSString *)oboFirstName {
    return ThreadSafeReturn(^id{
        return self.internal.oboFirstName;
    });
}

- (void)setOboFirstName:(NSString *)oboFirstName {
    ThreadSafe(^{
        self.internal.oboFirstName = oboFirstName;
    });
}

- (NSString *)oboLastName {
    return ThreadSafeReturn(^id{
        return self.internal.oboLastName;
    });
}

- (void)setOboLastName:(NSString *)oboLastName {
    ThreadSafe(^{
        self.internal.oboLastName = oboLastName;
    });
}

- (NSString *)oboPreferredName {
    return ThreadSafeReturn(^id{
        return self.internal.oboPreferredName;
    });
}

- (void)setOboPreferredName:(NSString *)oboPreferredName {
    ThreadSafe(^{
        self.internal.oboPreferredName = oboPreferredName;
    });
}

- (NSNumber *)pageCount {
    return ThreadSafeReturn(^id{
        return self.internal.pageCount;
    });
}

- (void)setPageCount:(NSNumber *)pageCount {
    ThreadSafe(^{
        self.internal.pageCount = pageCount;
    });
}

- (NSArray *)productList {
    return ThreadSafeReturn(^id{
        return self.internal.productList;
    });
}

- (void)setProductList:(NSArray *)productList {
    ThreadSafe(^{
        self.internal.productList = productList;
    });
}

- (NSString *)productType {
    return ThreadSafeReturn(^id{
        return self.internal.productType;
    });
}

- (void)setProductType:(NSString *)productType {
    ThreadSafe(^{
        self.internal.productType = productType;
    });
}

- (NSString *)pubDate {
    return ThreadSafeReturn(^id{
        return self.internal.pubDate;
    });
}

- (void)setPubDate:(NSString *)pubDate {
    ThreadSafe(^{
        self.internal.pubDate = pubDate;
    });
}

- (NSString *)pubId {
    return ThreadSafeReturn(^id{
        return self.internal.pubId;
    });
}

- (void)setPubId:(NSString *)pubId {
    ThreadSafe(^{
        self.internal.pubId = pubId;
    });
}

- (NSString *)pubKey {
    return ThreadSafeReturn(^id{
        return self.internal.pubKey;
    });
}

- (void)setPubKey:(NSString *)pubKey {
    ThreadSafe(^{
        self.internal.pubKey = pubKey;
    });
}

- (NSString *)refArticleTitle {
    return ThreadSafeReturn(^id{
        return self.internal.refArticleTitle;
    });
}

- (void)setRefArticleTitle:(NSString *)refArticleTitle {
    ThreadSafe(^{
        self.internal.refArticleTitle = refArticleTitle;
    });
}

- (NSString *)refArticleUrl {
    return ThreadSafeReturn(^id{
        return self.internal.refArticleUrl;
    });
}

- (void)setRefArticleUrl:(NSString *)refArticleUrl {
    ThreadSafe(^{
        self.internal.refArticleUrl = refArticleUrl;
    });
}

- (NSString *)region {
    return ThreadSafeReturn(^id{
        return self.internal.region;
    });
}

- (void)setRegion:(NSString *)region {
    ThreadSafe(^{
        self.internal.region = region;
    });
}

- (NSString *)resdataUrl {
    return ThreadSafeReturn(^id{
        return self.internal.resdataUrl;
    });
}

- (void)setResdataUrl:(NSString *)resdataUrl {
    ThreadSafe(^{
        self.internal.resdataUrl = resdataUrl;
    });
}

- (NSString *)rnum {
    return ThreadSafeReturn(^id{
        return self.internal.rnum;
    });
}

- (void)setRnum:(NSString *)rnum {
    ThreadSafe(^{
        self.internal.rnum = rnum;
    });
}

- (NSArray *)scale {
    return ThreadSafeReturn(^id{
        return self.internal.scale;
    });
}

- (void)setScale:(NSArray *)scale {
    ThreadSafe(^{
        self.internal.scale = scale;
    });
}

- (NSString *)sectors {
    return ThreadSafeReturn(^id{
        return self.internal.sectors;
    });
}

- (void)setSectors:(NSString *)sectors {
    ThreadSafe(^{
        self.internal.sectors = sectors;
    });
}

- (NSString *)source {
    return ThreadSafeReturn(^id{
        return self.internal.source;
    });
}

- (void)setSource:(NSString *)source {
    ThreadSafe(^{
        self.internal.source = source;
    });
}

- (NSString *)summary {
    return ThreadSafeReturn(^id{
        return self.internal.summary;
    });
}

- (void)setSummary:(NSString *)summary {
    ThreadSafe(^{
        self.internal.summary = summary;
    });
}

- (NSString *)synopsis {
    return ThreadSafeReturn(^id{
        return self.internal.synopsis;
    });
}

- (void)setSynopsis:(NSString *)synopsis {
    ThreadSafe(^{
        self.internal.synopsis = synopsis;
    });
}

- (NSString *)template {
    return ThreadSafeReturn(^id{
        return self.internal.template;
    });
}

- (void)setTemplate:(NSString *)template {
    ThreadSafe(^{
        self.internal.template = template;
    });
}

- (NSString *)themeId {
    return ThreadSafeReturn(^id{
        return self.internal.themeId;
    });
}

- (void)setThemeId:(NSString *)themeId {
    ThreadSafe(^{
        self.internal.themeId = themeId;
    });
}

- (NSString *)tickers {
    return ThreadSafeReturn(^id{
        return self.internal.tickers;
    });
}

- (void)setTickers:(NSString *)tickers {
    ThreadSafe(^{
        self.internal.tickers = tickers;
    });
}

- (NSString *)title {
    return ThreadSafeReturn(^id{
        return self.internal.title;
    });
}

- (void)setTitle:(NSString *)title {
    ThreadSafe(^{
        self.internal.title = title;
    });
}

- (NSNumber *)totalCount {
    return ThreadSafeReturn(^id{
        return self.internal.totalCount;
    });
}

- (void)setTotalCount:(NSNumber *)totalCount {
    ThreadSafe(^{
        self.internal.totalCount = totalCount;
    });
}

- (NSString *)videoType {
    return ThreadSafeReturn(^id{
        return self.internal.videoType;
    });
}

- (void)setVideoType:(NSString *)videoType {
    ThreadSafe(^{
        self.internal.videoType = videoType;
    });
}

- (NSString *)videoUrl {
    return ThreadSafeReturn(^id{
        return self.internal.videoUrl;
    });
}

- (void)setVideoUrl:(NSString *)videoUrl {
    ThreadSafe(^{
        self.internal.videoUrl = videoUrl;
    });
}

#pragma mark - NSObject

- (id)initWithInternal:(APInternalObject *)internal {
    if ((self = [super initWithInternal:internal])) {
        [self.class remoteConfig].remoteIDProperty = @"id";
        
    ThreadSafe(^{
    });
    }
    return self;
}

@end
