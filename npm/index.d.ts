declare module '@apiverve/portnumberlookup' {
  export interface portnumberlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface portnumberlookupResponse {
    status: string;
    error: string | null;
    data: PortNumberLookupData;
    code?: number;
  }


  interface PortNumberLookupData {
      port:         number;
      service:      string;
      protocol:     string;
      description:  string;
      category:     string;
      isWellKnown:  boolean;
      isRegistered: boolean;
      isDynamic:    boolean;
  }

  export default class portnumberlookupWrapper {
    constructor(options: portnumberlookupOptions);

    execute(callback: (error: any, data: portnumberlookupResponse | null) => void): Promise<portnumberlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: portnumberlookupResponse | null) => void): Promise<portnumberlookupResponse>;
    execute(query?: Record<string, any>): Promise<portnumberlookupResponse>;
  }
}
